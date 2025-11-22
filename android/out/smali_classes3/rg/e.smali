.class public final Lrg/e;
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
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/services/contact/InstitutionContactFragment;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/services/contact/InstitutionContactFragment;)V
    .locals 0

    iput-object p1, p0, Lrg/e;->a:Ltr/gov/turkiye/edevlet/kapisi/services/contact/InstitutionContactFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, "website"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/services/contact/InstitutionContactFragment;->c:[Lda/m;

    .line 9
    .line 10
    iget-object v0, p0, Lrg/e;->a:Ltr/gov/turkiye/edevlet/kapisi/services/contact/InstitutionContactFragment;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const-string v1, "-"

    .line 16
    .line 17
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    :try_start_0
    iget-object v1, v0, Ltr/gov/turkiye/edevlet/kapisi/services/contact/InstitutionContactFragment;->b:Landroid/content/Context;

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    new-instance v2, Lv/e;

    .line 28
    .line 29
    invoke-direct {v2, v1}, Lv/e;-><init>(Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    const v1, 0x7f13023f

    .line 33
    .line 34
    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const/4 v3, 0x6

    .line 40
    const/4 v4, 0x0

    .line 41
    invoke-static {v2, v1, v4, v3}, Lv/e;->c(Lv/e;Ljava/lang/Integer;Ljava/lang/CharSequence;I)V

    .line 42
    .line 43
    .line 44
    const v1, 0x7f1302c0

    .line 45
    .line 46
    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    new-instance v3, Lrg/a;

    .line 52
    .line 53
    invoke-direct {v3, p1, v0}, Lrg/a;-><init>(Ljava/lang/String;Ltr/gov/turkiye/edevlet/kapisi/services/contact/InstitutionContactFragment;)V

    .line 54
    .line 55
    .line 56
    const/4 p1, 0x2

    .line 57
    invoke-static {v2, v1, v4, v3, p1}, Lv/e;->e(Lv/e;Ljava/lang/Integer;Ljava/lang/String;Lx9/l;I)V

    .line 58
    .line 59
    .line 60
    const p1, 0x7f1302bf

    .line 61
    .line 62
    .line 63
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    sget-object v1, Lrg/b;->a:Lrg/b;

    .line 68
    .line 69
    invoke-static {v2, p1, v1}, Lv/e;->d(Lv/e;Ljava/lang/Integer;Lx9/l;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Lv/e;->show()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :catch_0
    const p1, 0x7f1302be

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catch_1
    :cond_0
    const p1, 0x7f1302bb

    .line 81
    .line 82
    .line 83
    :goto_0
    invoke-virtual {v0, p1}, Ltr/gov/turkiye/edevlet/kapisi/services/contact/InstitutionContactFragment;->F(I)V

    .line 84
    .line 85
    .line 86
    :cond_1
    :goto_1
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 87
    .line 88
    return-object p1
.end method
