.class public final Lng/f;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Ljava/lang/String;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;)V
    .locals 0

    iput-object p1, p0, Lng/f;->a:Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iget-object v1, p0, Lng/f;->a:Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;

    .line 5
    .line 6
    iput-boolean v0, v1, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->n:Z

    .line 7
    .line 8
    iget-object v0, v1, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->g:Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSearchBarBinding;

    .line 13
    .line 14
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSearchBarBinding;->c:Landroidx/appcompat/widget/AppCompatEditText;

    .line 15
    .line 16
    const-string v1, "mSearchFragmentBinding.searchView.searchText"

    .line 17
    .line 18
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 29
    .line 30
    .line 31
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 32
    .line 33
    return-object p1

    .line 34
    :cond_0
    const-string p1, "mSearchFragmentBinding"

    .line 35
    .line 36
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/4 p1, 0x0

    .line 40
    throw p1
.end method
