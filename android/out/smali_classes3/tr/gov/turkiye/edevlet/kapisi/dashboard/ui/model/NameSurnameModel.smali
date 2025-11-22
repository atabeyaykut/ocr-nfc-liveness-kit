.class public abstract Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/NameSurnameModel;
.super Lhe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhe/a<",
        "Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/ItemNameSurnameBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\t\u0008\'\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0008\u0010\u0004\u001a\u00020\u0003H\u0014J\u000c\u0010\u0006\u001a\u00020\u0005*\u00020\u0002H\u0016R\"\u0010\u0007\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR$\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0016"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/NameSurnameModel;",
        "Lhe/a;",
        "Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/ItemNameSurnameBinding;",
        "",
        "getDefaultLayout",
        "Ll9/m;",
        "bind",
        "title",
        "I",
        "getTitle",
        "()I",
        "setTitle",
        "(I)V",
        "",
        "nameSurname",
        "Ljava/lang/String;",
        "getNameSurname",
        "()Ljava/lang/String;",
        "setNameSurname",
        "(Ljava/lang/String;)V",
        "<init>",
        "()V",
        "ui-dashboard_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private nameSurname:Ljava/lang/String;

.field private title:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lhe/a;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/NameSurnameModel;->nameSurname:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Landroidx/viewbinding/ViewBinding;)V
    .locals 0

    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/ItemNameSurnameBinding;

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/NameSurnameModel;->bind(Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/ItemNameSurnameBinding;)V

    return-void
.end method

.method public bind(Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/ItemNameSurnameBinding;)V
    .locals 8

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/ItemNameSurnameBinding;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 7
    .line 8
    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/NameSurnameModel;->title:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/NameSurnameModel;->nameSurname:Ljava/lang/String;

    .line 14
    .line 15
    if-eqz v0, :cond_3

    .line 16
    .line 17
    const-string v1, " "

    .line 18
    .line 19
    filled-new-array {v1}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/4 v4, 0x0

    .line 24
    invoke-static {v0, v1}, Lmc/n;->Y(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    move-object v2, v0

    .line 29
    check-cast v2, Ljava/lang/Iterable;

    .line 30
    .line 31
    const-string v3, " "

    .line 32
    .line 33
    const/4 v5, 0x0

    .line 34
    sget-object v6, Lge/e;->a:Lge/e;

    .line 35
    .line 36
    const/16 v7, 0x1e

    .line 37
    .line 38
    invoke-static/range {v2 .. v7}, Lm9/t;->g1(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lx9/l;I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    add-int/lit8 v1, v1, -0x1

    .line 47
    .line 48
    if-ltz v1, :cond_2

    .line 49
    .line 50
    :goto_0
    add-int/lit8 v2, v1, -0x1

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    invoke-static {v3}, La6/a;->t(C)Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-nez v3, :cond_0

    .line 61
    .line 62
    add-int/lit8 v1, v1, 0x1

    .line 63
    .line 64
    const/4 v2, 0x0

    .line 65
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    goto :goto_2

    .line 70
    :cond_0
    if-gez v2, :cond_1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    move v1, v2

    .line 74
    goto :goto_0

    .line 75
    :cond_2
    :goto_1
    const-string v0, ""

    .line 76
    .line 77
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    goto :goto_3

    .line 82
    :cond_3
    const/4 v0, 0x0

    .line 83
    :goto_3
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/ItemNameSurnameBinding;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 84
    .line 85
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public getDefaultLayout()I
    .locals 1

    const v0, 0x7f0d00a2

    return v0
.end method

.method public final getNameSurname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/NameSurnameModel;->nameSurname:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()I
    .locals 1

    iget v0, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/NameSurnameModel;->title:I

    return v0
.end method

.method public final setNameSurname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/NameSurnameModel;->nameSurname:Ljava/lang/String;

    return-void
.end method

.method public final setTitle(I)V
    .locals 0

    iput p1, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/NameSurnameModel;->title:I

    return-void
.end method
