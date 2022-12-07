# Analytics search

> Analytics search is a project made by me that consists of a search engine able to record in the db information about user's interests, and the articles' and themes' relevances both for the users and for the general public according to the rate of sactifaction of a user with a search. Feel free to fork this project and modify it for your own use!

![ERD diagram of our database](\db\drawing\ERD_diagram.png)

## Basic functionality:
This search engine is designed to look for words as they are input by the user, delivering results tailored to each user's specific history (if they have one). The general rule that defines the order of the results is simple: first, the 20 (could be more) results **more similar to the query** get ordered by **((relevance to the user + 1) x general relevance / users who contributed with at least one relevance point).**. Then the next 20, and so on. This rule was chosen because it gives more weight to the relevance to each specific user, but also does not disregard the relevance to the rest of the user base.

## How relevance is determined:
An article or theme gets one **general relevance** point each time a user accesses it, and stays on it for at least 20 seconds. **Relevance to the user** is a count of points only for that user, and the general relevance gets increased by every user.

## Deployment

<!-- You can find the app live [here](https://PENDING.herokuapp.com/) -->

## Built With

- **Ruby 3.1.3p185 (2022-11-24 revision 1a6b16756e)**
- **Rails 7.0.4**
- **PostgreSQL 15**
- **Visual Studio Code**
- **PGAdmin 4**

## Getting Started

### To launch the project locally:

#### Step 1:

- Clone this repo locally using either github desktop or using the clone link provided by the green button on the top right.

- Alternatively, you can just download the complete zip file and extract the folder in your directory

#### Step 2:

```bash
> bundle install
> rails db:create
> rails db:migrate
> rails db:seed
> rails s
```
## Authors

👤 **Ivan Silva**
- GitHub: [@iKuartz](https://github.com/iKuartz)
- LinkedIn: [Ivan Barbosa da Silva](https://www.linkedin.com/in/i-b-silva/)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome and highly encouraged!
We feel that your input is what helps us grow so you're always welcome :)

Feel free to check the [issues page](../../issues/).

## Acknowledgments and thanks

- To all the kind souls on Stack Overflow and Google

## Show your support

Give us a ⭐️ if you like this project!

## 📝 License

This project is [MIT](./MIT.md) licensed.
