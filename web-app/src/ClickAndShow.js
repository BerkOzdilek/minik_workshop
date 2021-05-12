import React from 'react';
import axios from 'axios';

function ClickAndShow() {
    const initialList = []
    const [list, setList] = React.useState(initialList);

    function onPressLearnMore() {
        axios({
            // baseURL: 'http://api.myapp.info/',
            baseURL: 'http://localhost:8080',
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
            <button onClick={onPressLearnMore}>
                Activate Lasers
            </button>
            <ul>{list.map((item, index) => <li key={index}>{item}</li>)}</ul>
        </div>
    );
}

export default ClickAndShow;