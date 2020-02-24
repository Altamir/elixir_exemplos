let HelloWord = {
    init(socket) {
        let channel = socket.channel('hello_word:lobby')
        channel.join()
        this.listenForChats(channel)
    },

    listenForChats(channel) {
        document.getElementById('chat-form').addEventListener('submit', function(e){
            e.preventDefault()

            let userNameElement = document.getElementById('user-name')
            let userMsgElemente = document.getElementById('user-msg')

            let userName = userNameElement.value
            let userMsg = userMsgElemente.value

            if(userMsg !== '' && userName !== ''){
                channel.push('shout', {name: userName, body: userMsg})
            }

            userNameElement.value = ''
            userMsgElemente.value = ''
        })

        channel.on('shout', payload => {
            let chatbox = document.querySelector('#chat-box')
            let msgBlock = document.createElement('p')


            msgBlock.insertAdjacentHTML('beforeend',`<b>${payload.name}</b>: ${payload.body}`)
            chatbox.appendChild(msgBlock);

        })
    }

}

export default HelloWord