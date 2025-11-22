.class public final synthetic Lng/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;


# direct methods
.method public synthetic constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lng/c;->a:Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->s:[Lda/m;

    .line 2
    .line 3
    const-string p1, "this$0"

    .line 4
    .line 5
    iget-object p3, p0, Lng/c;->a:Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;

    .line 6
    .line 7
    invoke-static {p3, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x3

    .line 11
    const/4 v0, 0x1

    .line 12
    if-ne p2, p1, :cond_1

    .line 13
    .line 14
    iget-object p1, p3, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->g:Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSearchBarBinding;

    .line 19
    .line 20
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSearchBarBinding;->c:Landroidx/appcompat/widget/AppCompatEditText;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-boolean v0, p3, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->q:Z

    .line 31
    .line 32
    invoke-virtual {p3, p1}, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->F(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const-string p1, "mSearchFragmentBinding"

    .line 37
    .line 38
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const/4 p1, 0x0

    .line 42
    throw p1

    .line 43
    :cond_1
    :goto_0
    return v0
.end method
