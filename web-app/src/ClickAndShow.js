import React from 'react';
import axios from 'axios';

function ClickAndShow() {
    const initialList = []
    const [list, setList] = React.useState(initialList);

    function onClick() {
        axios({
            baseURL: window._env_.API_URL,// || 'http://localhost:8080',
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
            <p>API_URL: {window._env_.API_URL}</p>
            <button onClick={onClick}>
                Click me
            </button>
            <ul>{list.map((item, index) => <li key={index}>{item}</li>)}</ul>
        </div>
    );
}

export default ClickAndShow;