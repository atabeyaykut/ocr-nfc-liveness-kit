.class public final Lza/d$c;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lza/d;-><init>(Lp4/g7;Lcb/a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Lcc/m0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lza/d;


# direct methods
.method public constructor <init>(Lza/d;)V
    .locals 0

    iput-object p1, p0, Lza/d$c;->a:Lza/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lza/d$c;->a:Lza/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lza/d;->d()Llb/c;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, v0, Lza/d;->b:Lcb/a;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    sget-object v0, Lec/h;->H:Lec/h;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    new-array v1, v1, [Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const/4 v3, 0x0

    .line 21
    aput-object v2, v1, v3

    .line 22
    .line 23
    invoke-static {v0, v1}, Lec/i;->c(Lec/h;[Ljava/lang/String;)Lec/f;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    sget-object v3, La0/b;->l:La0/b;

    .line 29
    .line 30
    iget-object v0, v0, Lza/d;->a:Lp4/g7;

    .line 31
    .line 32
    invoke-virtual {v0}, Lp4/g7;->a()Lma/b0;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-interface {v4}, Lma/b0;->m()Lja/k;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-static {v3, v1, v4}, La0/b;->n(La0/b;Llb/c;Lja/k;)Lma/e;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    if-nez v3, :cond_2

    .line 45
    .line 46
    invoke-interface {v2}, Lcb/a;->z()Lsa/r;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    iget-object v3, v0, Lp4/g7;->a:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v3, Lya/c;

    .line 55
    .line 56
    iget-object v3, v3, Lya/c;->k:Lya/h;

    .line 57
    .line 58
    invoke-interface {v3, v2}, Lya/h;->a(Lcb/g;)Lma/e;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    const/4 v2, 0x0

    .line 64
    :goto_0
    move-object v3, v2

    .line 65
    if-nez v3, :cond_2

    .line 66
    .line 67
    invoke-virtual {v0}, Lp4/g7;->a()Lma/b0;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-static {v1}, Llb/b;->l(Llb/c;)Llb/b;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    iget-object v0, v0, Lp4/g7;->a:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v0, Lya/c;

    .line 78
    .line 79
    iget-object v0, v0, Lya/c;->d:Leb/k;

    .line 80
    .line 81
    invoke-virtual {v0}, Leb/k;->c()Lyb/l;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iget-object v0, v0, Lyb/l;->l:Lma/d0;

    .line 86
    .line 87
    invoke-static {v2, v1, v0}, Lma/t;->c(Lma/b0;Llb/b;Lma/d0;)Lma/e;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    :cond_2
    invoke-interface {v3}, Lma/e;->q()Lcc/m0;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    :goto_1
    return-object v0
.end method
