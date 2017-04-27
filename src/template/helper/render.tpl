{function blog post=null url='/blog' tag=false}
    <article>
        {if isset($post.title)}
            <h1 {if $tag && isset($post.type) && $post.type === 'news'}class="news"{/if}>
                <a href="{$url}/{$post.id}">{$post.title}</a>
            </h1>
        {/if}
        {if isset($post.date)}
            <em>{$post.date|date_format:'%Y-%m-%d'}</em>
        {/if}
        {if isset($post.content)}
            <div>
                <p>
                    {$post.content|strip_tags|truncate:250}
                </p>
            </div>
        {/if}
        <a href="{$url}/{$post.id}">
            Read more
        </a>
    </article>
{/function}