.class public final Lza/m$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lza/m;-><init>(Lp4/g7;Lcb/t;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "+",
        "Leb/s;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lza/m;


# direct methods
.method public constructor <init>(Lza/m;)V
    .locals 0

    iput-object p1, p0, Lza/m$a;->a:Lza/m;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lza/m$a;->a:Lza/m;

    .line 2
    .line 3
    iget-object v1, v0, Lza/m;->h:Lp4/g7;

    .line 4
    .line 5
    iget-object v1, v1, Lp4/g7;->a:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lya/c;

    .line 8
    .line 9
    iget-object v1, v1, Lya/c;->l:Leb/x;

    .line 10
    .line 11
    iget-object v2, v0, Lpa/i0;->e:Llb/c;

    .line 12
    .line 13
    invoke-virtual {v2}, Llb/c;->b()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-interface {v1, v2}, Leb/x;->a(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    sget-object v2, Lm9/u;->a:Lm9/u;

    .line 26
    .line 27
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_2

    .line 32
    .line 33
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v3}, Ltb/b;->d(Ljava/lang/String;)Ltb/b;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    new-instance v5, Llb/c;

    .line 44
    .line 45
    const/16 v6, 0x2e

    .line 46
    .line 47
    iget-object v4, v4, Ltb/b;->a:Ljava/lang/String;

    .line 48
    .line 49
    const/16 v7, 0x2f

    .line 50
    .line 51
    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-direct {v5, v4}, Llb/c;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-static {v5}, Llb/b;->l(Llb/c;)Llb/b;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    iget-object v5, v0, Lza/m;->h:Lp4/g7;

    .line 63
    .line 64
    iget-object v5, v5, Lp4/g7;->a:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v5, Lya/c;

    .line 67
    .line 68
    iget-object v5, v5, Lya/c;->c:Leb/q;

    .line 69
    .line 70
    invoke-static {v5, v4}, Leb/r;->a(Leb/q;Llb/b;)Leb/s;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    if-eqz v4, :cond_1

    .line 75
    .line 76
    new-instance v5, Ll9/g;

    .line 77
    .line 78
    invoke-direct {v5, v3, v4}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_1
    const/4 v5, 0x0

    .line 83
    :goto_1
    if-eqz v5, :cond_0

    .line 84
    .line 85
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_2
    invoke-static {v1}, Lm9/e0;->S0(Ljava/util/ArrayList;)Ljava/util/Map;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    return-object v0
.end method
