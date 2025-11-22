.class public final synthetic Lqg/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;

.field public final synthetic b:Lf8/a;


# direct methods
.method public synthetic constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;Lf8/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqg/b;->a:Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;

    iput-object p2, p0, Lqg/b;->b:Lf8/a;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;->f:[Lda/m;

    .line 2
    .line 3
    iget-object p1, p0, Lqg/b;->a:Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;

    .line 4
    .line 5
    const-string p3, "this$0"

    .line 6
    .line 7
    invoke-static {p1, p3}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p3, p0, Lqg/b;->b:Lf8/a;

    .line 11
    .line 12
    const-string v0, "$cityListAdapter"

    .line 13
    .line 14
    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x3

    .line 18
    if-ne p2, v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;->e:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeCitySearchBarBinding;

    .line 25
    .line 26
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeCitySearchBarBinding;->b:Landroidx/appcompat/widget/AppCompatEditText;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iget-object p2, p3, Lf8/c;->f:Lf8/b;

    .line 37
    .line 38
    invoke-virtual {p2, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    const/4 p1, 0x1

    .line 42
    return p1
.end method
