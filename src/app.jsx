import React, { useEffect, useState } from 'react'

const App = () => {

    const [articles, setArticles] = useState([]);
    useEffect(() => {
        fetch('http://localhost:3000/articles.json')
            .then(response => response.json())
            .then(data => {
                setArticles(data)
            });

    }, [])

    return (
        <div>
            <h1>Articles</h1>
            {articles.map(article => {
                return <div>
                    <h2>{article.title}</h2>
                    <p>{article.content}</p>
                </div>
            })}
        </div>
    )
}

export default App