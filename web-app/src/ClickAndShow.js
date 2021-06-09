import React, {useState} from 'react'
import axios from 'axios'

function ClickAndShow() {

    const [list, setList] = useState([])

    function onClick() {
        axios({
            baseURL: 'http://api.myapp.info',
            url: '/count',
            headers: {
                'Accept': '*/*',
                'Access-Control-Allow-Origin': '*',
                'Content-Type': 'text',
            }

        }).then(response => {
            setList(list.concat(response.data))
        })
            .catch(err => console.log(err))
    }

    return (
        <div>
            <button onClick={onClick}>Click Me</button>
            <ul>
                {list.map((item, index) => (<li key={index}>{item}</li>))}
            </ul>
        </div>
    );
}

export default ClickAndShow;