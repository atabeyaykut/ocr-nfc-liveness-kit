.class public final Lng/k$b$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lng/k$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/p<",
        "Lng/i;",
        "Lr0/b<",
        "+",
        "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
        "Ljava/util/List<",
        "+",
        "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;",
        ">;>;>;",
        "Lng/i;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lng/k$b$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lng/k$b$a;

    invoke-direct {v0}, Lng/k$b$a;-><init>()V

    sput-object v0, Lng/k$b$a;->a:Lng/k$b$a;

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
    .locals 9

    .line 1
    check-cast p1, Lng/i;

    .line 2
    .line 3
    move-object v2, p2

    .line 4
    check-cast v2, Lr0/b;

    .line 5
    .line 6
    sget-object p2, Lm9/v;->a:Lm9/v;

    .line 7
    .line 8
    const-string v0, "$this$execute"

    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v0, "result"

    .line 14
    .line 15
    invoke-static {v2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 v8, 0x0

    .line 19
    :try_start_0
    invoke-virtual {v2}, Lr0/b;->a()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;->getOrThrow()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ljava/util/List;

    .line 32
    .line 33
    move-object v4, v0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move-object v4, v8

    .line 36
    :goto_0
    const/4 v1, 0x0

    .line 37
    if-eqz v4, :cond_1

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    const/4 v5, 0x0

    .line 41
    const/4 v6, 0x5

    .line 42
    const/4 v7, 0x0

    .line 43
    const/4 v1, 0x0

    .line 44
    move-object v0, p1

    .line 45
    invoke-static/range {v0 .. v7}, Lng/i;->copy$default(Lng/i;Lr0/b;Lr0/b;Ljava/util/List;Ljava/util/List;ZILjava/lang/Object;)Lng/i;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    new-instance v2, Lr0/k;

    .line 51
    .line 52
    invoke-direct {v2, v8}, Lr0/k;-><init>(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    const/4 v3, 0x0

    .line 56
    const/4 v5, 0x0

    .line 57
    const/4 v6, 0x5

    .line 58
    const/4 v7, 0x0

    .line 59
    move-object v0, p1

    .line 60
    move-object v4, p2

    .line 61
    invoke-static/range {v0 .. v7}, Lng/i;->copy$default(Lng/i;Lr0/b;Lr0/b;Ljava/util/List;Ljava/util/List;ZILjava/lang/Object;)Lng/i;

    .line 62
    .line 63
    .line 64
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    goto :goto_1

    .line 66
    :catchall_0
    move-exception v0

    .line 67
    const/4 v1, 0x0

    .line 68
    new-instance v2, Lr0/i;

    .line 69
    .line 70
    invoke-direct {v2, v8, v0}, Lr0/i;-><init>(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 71
    .line 72
    .line 73
    const/4 v3, 0x0

    .line 74
    const/4 v5, 0x0

    .line 75
    const/4 v6, 0x5

    .line 76
    const/4 v7, 0x0

    .line 77
    move-object v0, p1

    .line 78
    move-object v4, p2

    .line 79
    invoke-static/range {v0 .. v7}, Lng/i;->copy$default(Lng/i;Lr0/b;Lr0/b;Ljava/util/List;Ljava/util/List;ZILjava/lang/Object;)Lng/i;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    :goto_1
    return-object p1
.end method
