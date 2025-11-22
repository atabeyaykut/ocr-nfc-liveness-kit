.class public final Ltg/a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Ltg/c;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/services/firm/FirmCategoryListFragment;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/services/firm/FirmCategoryListFragment;)V
    .locals 0

    iput-object p1, p0, Ltg/a;->a:Ltr/gov/turkiye/edevlet/kapisi/services/firm/FirmCategoryListFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    check-cast p1, Ltg/c;

    .line 2
    .line 3
    const-string v0, "selectedInstitution"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/services/firm/FirmCategoryListFragment;->c:[Lda/m;

    .line 9
    .line 10
    iget-object v0, p0, Ltg/a;->a:Ltr/gov/turkiye/edevlet/kapisi/services/firm/FirmCategoryListFragment;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iget v1, p1, Ltg/c;->b:I

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "getString(resourceId)"

    .line 22
    .line 23
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v2, "tr-TR"

    .line 27
    .line 28
    invoke-static {v2}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const-string v3, "forLanguageTag(\"tr-TR\")"

    .line 33
    .line 34
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v1, v2}, Lmc/j;->v(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget v2, p1, Ltg/c;->c:I

    .line 42
    .line 43
    const-string v3, "title"

    .line 44
    .line 45
    const-string v4, "categoryCode"

    .line 46
    .line 47
    const/4 v5, 0x0

    .line 48
    const/4 v6, 0x2

    .line 49
    const/4 v7, 0x1

    .line 50
    if-eq v2, v7, :cond_0

    .line 51
    .line 52
    if-eq v2, v6, :cond_0

    .line 53
    .line 54
    const/4 v8, 0x5

    .line 55
    if-eq v2, v8, :cond_0

    .line 56
    .line 57
    const/16 v8, 0x5a

    .line 58
    .line 59
    if-eq v2, v8, :cond_0

    .line 60
    .line 61
    new-array v6, v6, [Ll9/g;

    .line 62
    .line 63
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    new-instance v8, Ll9/g;

    .line 68
    .line 69
    invoke-direct {v8, v4, v2}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    aput-object v8, v6, v5

    .line 73
    .line 74
    new-instance v2, Ll9/g;

    .line 75
    .line 76
    invoke-direct {v2, v3, v1}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    aput-object v2, v6, v7

    .line 80
    .line 81
    invoke-static {v6}, Landroidx/core/os/BundleKt;->bundleOf([Ll9/g;)Landroid/os/Bundle;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-static {v0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    const v3, 0x7f0a01f3

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_0
    new-array v6, v6, [Ll9/g;

    .line 94
    .line 95
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    new-instance v8, Ll9/g;

    .line 100
    .line 101
    invoke-direct {v8, v4, v2}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    aput-object v8, v6, v5

    .line 105
    .line 106
    new-instance v2, Ll9/g;

    .line 107
    .line 108
    invoke-direct {v2, v3, v1}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    aput-object v2, v6, v7

    .line 112
    .line 113
    invoke-static {v6}, Landroidx/core/os/BundleKt;->bundleOf([Ll9/g;)Landroid/os/Bundle;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-static {v0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    const v3, 0x7f0a01f0

    .line 122
    .line 123
    .line 124
    :goto_0
    invoke-virtual {v2, v3, v1}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, p1}, Ltr/gov/turkiye/edevlet/kapisi/services/firm/FirmCategoryListFragment;->E(Ltg/c;)V

    .line 128
    .line 129
    .line 130
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 131
    .line 132
    return-object p1
.end method
