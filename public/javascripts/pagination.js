$(function() {
    $(".pagination a").live("click", function() {

        alert(this.href);
        $.get(this.href, null, null, "script");
        alert("sweet")
        return false;
        });
});

