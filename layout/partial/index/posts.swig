<div class="sec sec-posts">
    <div class="container">
        <div class="sec-heading">
            <h2 class="sec-heading-main">凹凸文章/经验</h2>
            <p class="sec-heading-sub">来自凹凸实验室研发工程师的一些经验、技淫奇巧心德分享。</p>
        </div>
    </div>
    <div class="container sec-main">

        {% set o2posts = process_posts(site) %}
        <div class="row home-posts">
            {% for post in o2posts %}
            {% if loop.index <= theme.layout.feature_count %}
            {% set author = post.author|default({github_name:config.github.user, nick:config.author}) %}
            <div class="col-sm-12 col-md-6">
            {% include '../post/mini.swig' with {post: post, author: author, idx: loop.index} %}
            </div>
            {% endif %}
            {% endfor %}
        </div>
    </div>
    <div class="container sec-footer">
        <ul class="actions sec-actions">
            <li><a href="{{ url_for('notes/') }}" class="button">{{ __('post.view_more') }}</a></li>
        </ul>
    </div>
</div>
