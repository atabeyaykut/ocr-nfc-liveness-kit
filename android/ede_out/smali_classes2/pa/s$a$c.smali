.class public final Lpa/s$a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpa/s$a;-><init>(Lpa/s;Lbc/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lx9/a<",
        "Ljava/util/Collection<",
        "Lma/j;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lpa/s$a;


# direct methods
.method public constructor <init>(Lpa/s$a;)V
    .locals 0

    iput-object p1, p0, Lpa/s$a$c;->a:Lpa/s$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lpa/s$a$c;->a:Lpa/s$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/HashSet;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, v0, Lpa/s$a;->e:Lpa/s;

    .line 12
    .line 13
    iget-object v2, v2, Lpa/s;->k:Lbc/i;

    .line 14
    .line 15
    invoke-interface {v2}, Lx9/a;->invoke()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Ljava/util/Set;

    .line 20
    .line 21
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_3

    .line 30
    .line 31
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Llb/f;

    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    if-eqz v3, :cond_2

    .line 39
    .line 40
    iget-object v5, v0, Lpa/s$a;->b:Lbc/g;

    .line 41
    .line 42
    check-cast v5, Lbc/c$k;

    .line 43
    .line 44
    invoke-virtual {v5, v3}, Lbc/c$k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    check-cast v5, Ljava/util/Collection;

    .line 49
    .line 50
    if-eqz v5, :cond_1

    .line 51
    .line 52
    invoke-interface {v1, v5}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 53
    .line 54
    .line 55
    iget-object v5, v0, Lpa/s$a;->c:Lbc/g;

    .line 56
    .line 57
    check-cast v5, Lbc/c$k;

    .line 58
    .line 59
    invoke-virtual {v5, v3}, Lbc/c$k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    check-cast v3, Ljava/util/Collection;

    .line 64
    .line 65
    if-eqz v3, :cond_0

    .line 66
    .line 67
    invoke-interface {v1, v3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    const/4 v0, 0x3

    .line 72
    invoke-static {v0}, Lpa/s$a;->h(I)V

    .line 73
    .line 74
    .line 75
    throw v4

    .line 76
    :cond_1
    const/4 v0, 0x7

    .line 77
    invoke-static {v0}, Lpa/s$a;->h(I)V

    .line 78
    .line 79
    .line 80
    throw v4

    .line 81
    :cond_2
    const/4 v0, 0x5

    .line 82
    invoke-static {v0}, Lpa/s$a;->h(I)V

    .line 83
    .line 84
    .line 85
    throw v4

    .line 86
    :cond_3
    return-object v1
.end method
