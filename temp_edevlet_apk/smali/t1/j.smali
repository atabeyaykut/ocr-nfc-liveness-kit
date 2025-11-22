.class public final Lt1/j;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lz1/b;


# direct methods
.method public constructor <init>(Lz1/b;)V
    .locals 0

    iput-object p1, p0, Lt1/j;->a:Lz1/b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object v0, p0, Lt1/j;->a:Lz1/b;

    .line 8
    .line 9
    iget-object v1, v0, Lz1/b;->b:Lt1/d;

    .line 10
    .line 11
    iget v2, v1, Lt1/d;->a:I

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x2

    .line 15
    const/4 v5, 0x1

    .line 16
    const-string v6, "imageAdapter"

    .line 17
    .line 18
    if-ne v2, v4, :cond_1

    .line 19
    .line 20
    iget-object v2, v0, Lz1/b;->e:Ls1/g;

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    iget-object v2, v2, Ls1/g;->e:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    iget v1, v1, Lt1/d;->f:I

    .line 31
    .line 32
    if-lt v2, v1, :cond_4

    .line 33
    .line 34
    if-nez p1, :cond_4

    .line 35
    .line 36
    invoke-virtual {v0}, Lz1/b;->b()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const v0, 0x7f130081

    .line 41
    .line 42
    .line 43
    const/4 v5, 0x0

    .line 44
    invoke-static {p1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    invoke-static {v6}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw v3

    .line 56
    :cond_1
    if-ne v2, v5, :cond_4

    .line 57
    .line 58
    iget-object p1, v0, Lz1/b;->e:Ls1/g;

    .line 59
    .line 60
    if-eqz p1, :cond_3

    .line 61
    .line 62
    iget-object p1, p1, Ls1/g;->e:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-lez p1, :cond_4

    .line 69
    .line 70
    iget-object p1, v0, Lz1/b;->e:Ls1/g;

    .line 71
    .line 72
    if-eqz p1, :cond_2

    .line 73
    .line 74
    new-instance v0, Landroidx/core/widget/a;

    .line 75
    .line 76
    invoke-direct {v0, v5, p1}, Landroidx/core/widget/a;-><init>(ILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Landroidx/core/widget/a;->run()V

    .line 80
    .line 81
    .line 82
    iget-object v0, p1, Ls1/g;->f:Lx9/l;

    .line 83
    .line 84
    if-eqz v0, :cond_4

    .line 85
    .line 86
    iget-object p1, p1, Ls1/g;->e:Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-interface {v0, p1}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_2
    invoke-static {v6}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw v3

    .line 96
    :cond_3
    invoke-static {v6}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw v3

    .line 100
    :cond_4
    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    return-object p1
.end method
