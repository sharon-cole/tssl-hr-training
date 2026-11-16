// Initial learning resources
let resources = [
    {
        title: "HTML Fundamentals",
        category: "HTML",
        platform: "YouTube",
        difficulty: "Beginner"
    },
    {
        title: "CSS Layout Guide",
        category: "CSS",
        platform: "MDN",
        difficulty: "Intermediate"
    },
    {
        title: "JavaScript Basics",
        category: "JavaScript",
        platform: "freeCodeCamp",
        difficulty: "Beginner"
    },
    {
        title: "Git and GitHub",
        category: "Git",
        platform: "YouTube",
        difficulty: "Beginner"
    },
    {
        title: "DOM Manipulation",
        category: "JavaScript",
        platform: "MDN",
        difficulty: "Intermediate"
    }
];


// Create one resource card
function createResourceCard(resource) {
    const card = document.createElement("div");
    card.classList.add("resource-card");

    const title = document.createElement("h3");
    title.textContent = resource.title;

    const category = document.createElement("p");
    category.textContent = "Category: " + resource.category;

    const platform = document.createElement("p");
    platform.textContent = "Platform: " + resource.platform;

    const difficulty = document.createElement("p");
    difficulty.textContent = "Difficulty: " + resource.difficulty;

    card.append(title, category, platform, difficulty);

    return card;
}


// Display all resources
function renderResources() {
    const resourceList = document.querySelector("#resource-list");
    const resourceCount = document.querySelector("#resource-count");
    const emptyMessage = document.querySelector("#empty-message");

    resourceList.replaceChildren();

    for (const resource of resources) {
        const card = createResourceCard(resource);
        resourceList.append(card);
    }

    resourceCount.textContent = resources.length;

    if (resources.length === 0) {
        emptyMessage.hidden = false;
    } else {
        emptyMessage.hidden = true;
    }
}


// Validate submitted resource details
function validateResource(title, category, platform, difficulty) {
    const validDifficulties = ["Beginner", "Intermediate", "Advanced"];

    if (
        title.trim() === "" ||
        category.trim() === "" ||
        platform.trim() === "" ||
        difficulty.trim() === ""
    ) {
        return false;
    }

    if (!validDifficulties.includes(difficulty)) {
        return false;
    }

    return true;
}


// Handle form submission
const resourceForm = document.querySelector("#resource-form");

resourceForm.addEventListener("submit", function(event) {
    event.preventDefault();

    const title = document.querySelector("#title").value.trim();
    const category = document.querySelector("#category").value.trim();
    const platform = document.querySelector("#platform").value.trim();
    const difficulty = document.querySelector("#difficulty").value;

    const feedback = document.querySelector("#feedback");

    if (!validateResource(title, category, platform, difficulty)) {
        feedback.textContent = "Please complete all fields and select a valid difficulty.";
        feedback.style.color = "red";
        return;
    }

    const newResource = {
        title: title,
        category: category,
        platform: platform,
        difficulty: difficulty
    };

    resources.push(newResource);

    renderResources();

    resourceForm.reset();

    feedback.textContent = "Resource added successfully!";
    feedback.style.color = "green";
});


// Display resources when the page loads
renderResources();