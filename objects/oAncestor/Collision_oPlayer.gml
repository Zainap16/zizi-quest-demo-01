if (place_meeting(x, y, oPlayer)) {
    if (!has_interacted) {  // Check if the interaction has not occurred yet
        // Step 1: Initial interaction
        NewTextBox2("\nThe air around you shimmers,\nand a ghostly figure\nappears.", 0, []);
        
        // Step 2: The ancestral spirit introduces itself
        NewTextBox2("\nAncestral Spirit: 'Zizi, child of\nour bloodline. I am your\ngreat-great-grandmother's spirit. I\ncome to guide you.'", 0, []);

        // Step 3: Zizi responds in awe
        NewTextBox2("\nZizi: 'I... I don't understand.\nHow did I reach you?'", 0, []);

        // Step 4: The ancestral spirit explains their connection
        NewTextBox2("\nAncestral Spirit: 'Our ancestors\nhave always watched over us,\nwaiting to guide you in\nyour time of need.'", 0, []);
        NewTextBox2("\nAncestral Spirit: 'You are called\nto protect our heritage\nand preserve our legacy.'", 0, []);

        // Step 5: Zizi expresses doubt
        NewTextBox2("\nZizi: 'But I'm alone. I don't\nknow how to survive here.'", 0, []);

        // Step 6: The spirit encourages Zizi
        NewTextBox2("\nAncestral Spirit: 'The spirit of\nthe Nguni people runs through\nyour veins. Their strength and\nwisdom will guide you.'", 0, []);
        NewTextBox2("\nAncestral Spirit: 'Listen to your\nheart, and it will lead\nyou to your family and\nyour purpose.'", 0, []);

        // Step 7: Another layer of encouragement
        NewTextBox2("\nAncestral Spirit: 'As you seek\nyour family, each step will\nreveal more of your destiny.'", 0, []);
        NewTextBox2("\nAncestral Spirit: 'You carry the\nstrength of generations before you.'", 0, []);

        // Step 8: Empowering Zizi
        NewTextBox2("\nAncestral Spirit: 'You are never\nalone, Zizi. Our spirit is\nalways with you.'", 0, []);
        NewTextBox2("\nAncestral Spirit: 'Embrace our heritage—it\nwill shield you from the\ndarkness.'", 0, []);

        // Step 9: Zizi feels a sense of purpose
        NewTextBox2("\nZizi: 'Thank you, great-great-grandmother.\nI will find my family.'", 0, []);
        NewTextBox2("\nZizi: 'I will protect our heritage.'", 0, []);

        // Step 10: Spirit fades away
        NewTextBox2("\nThe spirit fades away, leaving\nyou with a newfound sense\nof purpose.", 0, []);

        // Mark as interacted
        has_interacted = true;  // Set the flag to true after the dialogue
    }
}
