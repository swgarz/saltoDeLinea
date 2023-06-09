{if $issue->getDatePublished()}
    <div class="issnIssue">
        <p id="issn">ISSN 2683-2917</p>
    </div>
    <div class="current_issue_title">
        {assign var="issueIdentification" value=$issue->getIssueIdentification()|strip_unsafe_html}
        {assign var="issueParts" value=explode(':',$issueIdentification)}
        {assign var="issueTitle" value=$issueParts[0] ~ ':' ~ "\n" ~ $issueParts[1]}
        {$issueTitle|nl2br}
    </div>
    <div class="published">
        <span class="label">
            {translate key="submissions.published"}:
        </span>
        <span class="value">
            {$issue->getDatePublished()|date_format:$dateFormatShort}
        </span>
    </div>
{/if}
