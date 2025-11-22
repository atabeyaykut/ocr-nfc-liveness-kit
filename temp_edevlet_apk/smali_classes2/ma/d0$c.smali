.class public final Lma/d0$c;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lma/d0;-><init>(Lbc/l;Lma/b0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Lma/d0$a;",
        "Lma/e;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lma/d0;


# direct methods
.method public constructor <init>(Lma/d0;)V
    .locals 0

    iput-object p1, p0, Lma/d0$c;->a:Lma/d0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    check-cast p1, Lma/d0$a;

    .line 2
    .line 3
    const-string v0, "<name for destructuring parameter 0>"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p1, Lma/d0$a;->a:Llb/b;

    .line 9
    .line 10
    iget-boolean v1, v0, Llb/b;->c:Z

    .line 11
    .line 12
    if-nez v1, :cond_2

    .line 13
    .line 14
    invoke-virtual {v0}, Llb/b;->g()Llb/b;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v2, p0, Lma/d0$c;->a:Lma/d0;

    .line 19
    .line 20
    iget-object p1, p1, Lma/d0$a;->b:Ljava/util/List;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    move-object v3, p1

    .line 25
    check-cast v3, Ljava/lang/Iterable;

    .line 26
    .line 27
    invoke-static {v3}, Lm9/t;->W0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v2, v1, v3}, Lma/d0;->a(Llb/b;Ljava/util/List;)Lma/e;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object v1, v2, Lma/d0;->c:Lbc/g;

    .line 39
    .line 40
    invoke-virtual {v0}, Llb/b;->h()Llb/c;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    const-string v4, "classId.packageFqName"

    .line 45
    .line 46
    invoke-static {v3, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    check-cast v1, Lbc/c$k;

    .line 50
    .line 51
    invoke-virtual {v1, v3}, Lbc/c$k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Lma/f;

    .line 56
    .line 57
    :goto_0
    move-object v5, v1

    .line 58
    invoke-virtual {v0}, Llb/b;->k()Z

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    new-instance v1, Lma/d0$b;

    .line 63
    .line 64
    iget-object v4, v2, Lma/d0;->a:Lbc/l;

    .line 65
    .line 66
    invoke-virtual {v0}, Llb/b;->j()Llb/f;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    const-string v0, "classId.shortClassName"

    .line 71
    .line 72
    invoke-static {v6, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-static {p1}, Lm9/t;->c1(Ljava/util/List;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Ljava/lang/Integer;

    .line 80
    .line 81
    if-eqz p1, :cond_1

    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    move v8, p1

    .line 88
    goto :goto_1

    .line 89
    :cond_1
    const/4 p1, 0x0

    .line 90
    const/4 v8, 0x0

    .line 91
    :goto_1
    move-object v3, v1

    .line 92
    invoke-direct/range {v3 .. v8}, Lma/d0$b;-><init>(Lbc/l;Lma/f;Llb/f;ZI)V

    .line 93
    .line 94
    .line 95
    return-object v1

    .line 96
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 97
    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    const-string v2, "Unresolved local class: "

    .line 101
    .line 102
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw p1
.end method
