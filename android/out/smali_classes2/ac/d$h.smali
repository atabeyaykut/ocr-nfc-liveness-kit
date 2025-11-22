.class public final Lac/d$h;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lac/d;-><init>(Lyb/n;Lgb/b;Lib/c;Lib/a;Lma/r0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Lma/d;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lac/d;


# direct methods
.method public constructor <init>(Lac/d;)V
    .locals 0

    iput-object p1, p0, Lac/d$h;->a:Lac/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lac/d$h;->a:Lac/d;

    .line 2
    .line 3
    iget v1, v0, Lac/d;->l:I

    .line 4
    .line 5
    invoke-static {v1}, Landroidx/camera/core/impl/utils/f;->c(I)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    new-instance v1, Lob/h$a;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Lob/h$a;-><init>(Lac/d;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lpa/b;->q()Lcc/m0;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v1, v0}, Lpa/x;->S0(Lcc/m0;)V

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    iget-object v1, v0, Lac/d;->e:Lgb/b;

    .line 25
    .line 26
    iget-object v1, v1, Lgb/b;->r:Ljava/util/List;

    .line 27
    .line 28
    const-string v2, "classProto.constructorList"

    .line 29
    .line 30
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    check-cast v1, Ljava/lang/Iterable;

    .line 34
    .line 35
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    const/4 v3, 0x1

    .line 44
    const/4 v4, 0x0

    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    move-object v5, v2

    .line 52
    check-cast v5, Lgb/c;

    .line 53
    .line 54
    sget-object v6, Lib/b;->m:Lib/b$a;

    .line 55
    .line 56
    iget v5, v5, Lgb/c;->d:I

    .line 57
    .line 58
    invoke-virtual {v6, v5}, Lib/b$a;->c(I)Ljava/lang/Boolean;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    xor-int/2addr v5, v3

    .line 67
    if-eqz v5, :cond_1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    move-object v2, v4

    .line 71
    :goto_0
    check-cast v2, Lgb/c;

    .line 72
    .line 73
    if-eqz v2, :cond_3

    .line 74
    .line 75
    iget-object v0, v0, Lac/d;->m:Lyb/n;

    .line 76
    .line 77
    iget-object v0, v0, Lyb/n;->i:Lyb/z;

    .line 78
    .line 79
    invoke-virtual {v0, v2, v3}, Lyb/z;->d(Lgb/c;Z)Lac/c;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    goto :goto_1

    .line 84
    :cond_3
    move-object v1, v4

    .line 85
    :goto_1
    return-object v1
.end method
