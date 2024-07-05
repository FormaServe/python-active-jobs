# FormaServe Training - Python Examples

<img src="/static/images/Logo.png" align="right">

This repository showcases FormaServe’s training capabilities and provides a simple WRKACTJOB web application.

Please note that this application only runs on the IBM i.

## Features

* Provides a browser interface to the IBM i command **WRKACTJOB**
* Provides refresh and reset operations.
* Allows for column sorting.

## Installation

Clone this repository to your local machine

```bash
git clone https://github.com/FormaServe/python-active-jobs.git

```

## Install dependencies

Install the dependencies for this application

```bash
pip install pandas bottle ibm_db toolkit
```

## Note

It is advised to check-out & run the section on virtual environments with python after the install of this app.

## Running

Start the server by running, in an IBM i shell session;

```bash
python server.py
```

then point your browser to the following;

```bash
your_ibmi:3636
```

## Virtual Environment

As with all python projects, it is recommended to run this application in a virtual environment.  Follow the instructions below to get started.

### Create the Virtual Environment

Use the venv module to create a virtual environment inside the project folder. Run the following command:

```bash
# Run the Python command to create a virtual environment in the current directory
python -m venv --system-site-packages ~/.venv
```
Replace .venv with your preferred name for the virtual environment.

### Activate the Virtual Environment

To activate the virtual environment, use the appropriate command based on your operating system:\

```bash
source ~/.venv/bin/activate
```

### Deactivate the Virtual Environment

When you’re done working in the virtual environment, deactivate it:

```bash
deactivate
```

## Note

Remember to activate your virtual environment whenever you work on your project. 😊

## License

This project is licensed under the MIT License. See the LICENSE file for details.

## Authors

* FormaServe Systems Ltd - *All work* - [FormaServe](https://www.formaserve.co.uk)

## Acknowledgments

* Andy Youens - FormaServe Systems Ltd 1990 - All rights reserved.
* Nick Youens - FormaServe Systems Ltd 1990 - All rights reserved.
* Jane Youens - FormaServe Systems Ltd 1990 - All rights reserved.

## Copyright © 2024 FormaServe Systems Ltd
