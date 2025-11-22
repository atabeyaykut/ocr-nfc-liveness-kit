.class public final Lrf/i$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrf/i;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/p<",
        "Lrf/f;",
        "Lr0/b<",
        "+",
        "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
        "Ljava/util/List<",
        "+",
        "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;",
        ">;>;>;",
        "Lrf/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lrf/i$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lrf/i$a;

    invoke-direct {v0}, Lrf/i$a;-><init>()V

    sput-object v0, Lrf/i$a;->a:Lrf/i$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, Lrf/f;

    .line 2
    .line 3
    move-object v1, p2

    .line 4
    check-cast v1, Lr0/b;

    .line 5
    .line 6
    const-string p2, "$this$execute"

    .line 7
    .line 8
    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p2, "result"

    .line 12
    .line 13
    invoke-static {v1, p2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 p2, 0x0

    .line 17
    :try_start_0
    invoke-virtual {v1}, Lr0/b;->a()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;->getOrThrow()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Ljava/util/List;

    .line 30
    .line 31
    move-object v5, v0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move-object v5, p2

    .line 34
    :goto_0
    move-object v0, v5

    .line 35
    check-cast v0, Ljava/util/Collection;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const/4 v0, 0x0

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 49
    :goto_2
    const/4 v2, 0x0

    .line 50
    const/4 v3, 0x0

    .line 51
    const/4 v4, 0x0

    .line 52
    if-nez v0, :cond_3

    .line 53
    .line 54
    const/16 v6, 0xa

    .line 55
    .line 56
    const/4 v7, 0x0

    .line 57
    move-object v0, p1

    .line 58
    invoke-static/range {v0 .. v7}, Lrf/f;->copy$default(Lrf/f;Lr0/b;Lr0/b;ZLtr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;Ljava/util/List;ILjava/lang/Object;)Lrf/f;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    goto :goto_3

    .line 63
    :cond_3
    sget-object v5, Lm9/v;->a:Lm9/v;

    .line 64
    .line 65
    const/16 v6, 0xa

    .line 66
    .line 67
    const/4 v7, 0x0

    .line 68
    move-object v0, p1

    .line 69
    invoke-static/range {v0 .. v7}, Lrf/f;->copy$default(Lrf/f;Lr0/b;Lr0/b;ZLtr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;Ljava/util/List;ILjava/lang/Object;)Lrf/f;

    .line 70
    .line 71
    .line 72
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    goto :goto_3

    .line 74
    :catchall_0
    move-exception v0

    .line 75
    new-instance v1, Lr0/i;

    .line 76
    .line 77
    invoke-direct {v1, p2, v0}, Lr0/i;-><init>(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 78
    .line 79
    .line 80
    const/4 v2, 0x0

    .line 81
    const/4 v3, 0x0

    .line 82
    const/4 v4, 0x0

    .line 83
    const/4 v5, 0x0

    .line 84
    const/16 v6, 0x1a

    .line 85
    .line 86
    const/4 v7, 0x0

    .line 87
    move-object v0, p1

    .line 88
    invoke-static/range {v0 .. v7}, Lrf/f;->copy$default(Lrf/f;Lr0/b;Lr0/b;ZLtr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;Ljava/util/List;ILjava/lang/Object;)Lrf/f;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    :goto_3
    return-object p1
.end method
