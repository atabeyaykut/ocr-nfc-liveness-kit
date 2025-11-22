.class public final Lvf/e$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvf/e;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/p<",
        "Lvf/b;",
        "Lr0/b<",
        "+",
        "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
        "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;",
        ">;>;",
        "Lvf/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lvf/e$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lvf/e$a;

    invoke-direct {v0}, Lvf/e$a;-><init>()V

    sput-object v0, Lvf/e$a;->a:Lvf/e$a;

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
    check-cast p1, Lvf/b;

    .line 2
    .line 3
    move-object v5, p2

    .line 4
    check-cast v5, Lr0/b;

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
    invoke-static {v5, p2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 p2, 0x0

    .line 17
    :try_start_0
    invoke-virtual {v5}, Lr0/b;->a()Ljava/lang/Object;

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
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 30
    .line 31
    move-object v3, v0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move-object v3, p2

    .line 34
    :goto_0
    const/4 v1, 0x1

    .line 35
    const/4 v2, 0x0

    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    const/4 v4, 0x0

    .line 39
    const/4 v6, 0x0

    .line 40
    const/16 v7, 0x28

    .line 41
    .line 42
    const/4 v8, 0x0

    .line 43
    move-object v0, p1

    .line 44
    invoke-static/range {v0 .. v8}, Lvf/b;->copy$default(Lvf/b;ZZLtr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;Ljava/util/List;Lr0/b;Lr0/b;ILjava/lang/Object;)Lvf/b;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    const/4 v3, 0x0

    .line 50
    const/4 v4, 0x0

    .line 51
    const/4 v6, 0x0

    .line 52
    const/16 v7, 0x2c

    .line 53
    .line 54
    const/4 v8, 0x0

    .line 55
    const/4 v1, 0x1

    .line 56
    const/4 v2, 0x0

    .line 57
    move-object v0, p1

    .line 58
    invoke-static/range {v0 .. v8}, Lvf/b;->copy$default(Lvf/b;ZZLtr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;Ljava/util/List;Lr0/b;Lr0/b;ILjava/lang/Object;)Lvf/b;

    .line 59
    .line 60
    .line 61
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    goto :goto_1

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    new-instance v5, Lr0/i;

    .line 65
    .line 66
    invoke-direct {v5, p2, v0}, Lr0/i;-><init>(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 67
    .line 68
    .line 69
    const/4 v1, 0x1

    .line 70
    const/4 v2, 0x0

    .line 71
    const/4 v3, 0x0

    .line 72
    const/4 v4, 0x0

    .line 73
    const/4 v6, 0x0

    .line 74
    const/16 v7, 0x2c

    .line 75
    .line 76
    const/4 v8, 0x0

    .line 77
    move-object v0, p1

    .line 78
    invoke-static/range {v0 .. v8}, Lvf/b;->copy$default(Lvf/b;ZZLtr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;Ljava/util/List;Lr0/b;Lr0/b;ILjava/lang/Object;)Lvf/b;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    :goto_1
    return-object p1
.end method
