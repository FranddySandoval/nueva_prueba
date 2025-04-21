document.addEventListener("DOMContentLoaded", function () {
    const chatInput = document.getElementById("chat-input");
    const sendButton = document.querySelector(".send-button");
    const chatContainer = document.getElementById("chat-container");

    sendButton.addEventListener("click", sendMessage);
    chatInput.addEventListener("keypress", function (event) {
        if (event.key === "Enter") sendMessage();
    });

    function sendMessage() {
        const userMessage = chatInput.value.trim();
        if (userMessage === "") return;

        appendMessage(userMessage, "user");
        chatInput.value = "";

        getBotResponse(userMessage);
    }

    function appendMessage(message, sender) {
        const messageDiv = document.createElement("div");
        messageDiv.classList.add(sender);
        messageDiv.textContent = message;
        chatContainer.appendChild(messageDiv);
        chatContainer.scrollTop = chatContainer.scrollHeight;
    }

    function getBotResponse(userMessage) {
        const formData = new FormData();
        formData.append("message", userMessage);

        fetch("chatbot_response.php", {
            method: "POST",
            body: formData
        })
        .then(response => response.json())
        .then(data => {
            if (data.reply) {
                appendMessage(data.reply, "bot");
            } else {
                appendMessage("Lo siento, no entiendo eso.", "bot");
            }
        })
        .catch(error => {
            console.error("Error:", error);
            appendMessage("Hubo un error al procesar tu mensaje.", "bot");
        });
    }
});
