import React from 'react';
import axios from 'axios';

function ClickAndShow() {
    const initialList = []
    const [list, setList] = React.useState(initialList);

    function onClick() {
        axios({
            baseURL: readEnv('REACT_APP_API_URL'),
            url: '/hello',
            headers: {'Accept': '*/*'}
        })
            .then(function (response) {
                const newList = list.concat(response.data.toString());
                setList(newList);
            })
            .catch(function (error) {
                console.log(error);
            });
    }

    return (
        <div className="App">
            <p>API_URL: {readEnv('REACT_APP_API_URL')}</p>
            <p>asdasd: {process.env['REACT_APP_API_URL']}</p>
            <button onClick={onClick}>
                Click me
            </button>
            <ul>{list.map((item, index) => <li key={index}>{item}</li>)}</ul>
        </div>
    );
}

export default ClickAndShow;

function readEnv(name) {
    return window._env_ ? window._env_[name] : process.env[name]
}