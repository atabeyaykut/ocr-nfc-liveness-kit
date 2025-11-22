.class public final Lqg/e;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/r;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/r<",
        "Landroid/view/View;",
        "Le8/c<",
        "Lqg/m;",
        ">;",
        "Lqg/m;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;)V
    .locals 0

    iput-object p1, p0, Lqg/e;->a:Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Landroid/view/View;

    .line 2
    .line 3
    check-cast p2, Le8/c;

    .line 4
    .line 5
    check-cast p3, Lqg/m;

    .line 6
    .line 7
    check-cast p4, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    const-string p1, "<anonymous parameter 1>"

    .line 13
    .line 14
    invoke-static {p2, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string p1, "item"

    .line 18
    .line 19
    invoke-static {p3, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;->f:[Lda/m;

    .line 23
    .line 24
    iget-object p1, p0, Lqg/e;->a:Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;

    .line 25
    .line 26
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    iget-object p2, p2, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;->e:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeCitySearchBarBinding;

    .line 31
    .line 32
    iget-object p2, p2, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeCitySearchBarBinding;->b:Landroidx/appcompat/widget/AppCompatEditText;

    .line 33
    .line 34
    invoke-virtual {p2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    if-eqz p2, :cond_0

    .line 39
    .line 40
    invoke-interface {p2}, Landroid/text/Editable;->clear()V

    .line 41
    .line 42
    .line 43
    :cond_0
    iget-object p2, p3, Lqg/m;->f:Ljava/lang/Integer;

    .line 44
    .line 45
    const/4 p3, 0x3

    .line 46
    new-array p3, p3, [Ll9/g;

    .line 47
    .line 48
    iget-object p4, p1, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;->e:Ljava/lang/String;

    .line 49
    .line 50
    const-string v0, "title"

    .line 51
    .line 52
    if-eqz p4, :cond_2

    .line 53
    .line 54
    new-instance v1, Ll9/g;

    .line 55
    .line 56
    invoke-direct {v1, v0, p4}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    const/4 p4, 0x0

    .line 60
    aput-object v1, p3, p4

    .line 61
    .line 62
    new-instance p4, Ll9/g;

    .line 63
    .line 64
    const-string v0, "cityCode"

    .line 65
    .line 66
    invoke-direct {p4, v0, p2}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    const/4 p2, 0x1

    .line 70
    aput-object p4, p3, p2

    .line 71
    .line 72
    iget p2, p1, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;->d:I

    .line 73
    .line 74
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    new-instance p4, Ll9/g;

    .line 79
    .line 80
    const-string v0, "categoryCode"

    .line 81
    .line 82
    invoke-direct {p4, v0, p2}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    const/4 p2, 0x2

    .line 86
    aput-object p4, p3, p2

    .line 87
    .line 88
    invoke-static {p3}, Landroidx/core/os/BundleKt;->bundleOf([Ll9/g;)Landroid/os/Bundle;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    iget p3, p1, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;->d:I

    .line 93
    .line 94
    invoke-static {p1}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    const/16 p4, 0x5a

    .line 99
    .line 100
    if-ne p3, p4, :cond_1

    .line 101
    .line 102
    const p3, 0x7f0a02d4

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_1
    const p3, 0x7f0a01f3

    .line 107
    .line 108
    .line 109
    :goto_0
    invoke-virtual {p1, p3, p2}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;)V

    .line 110
    .line 111
    .line 112
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 113
    .line 114
    return-object p1

    .line 115
    :cond_2
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    const/4 p1, 0x0

    .line 119
    throw p1
.end method
