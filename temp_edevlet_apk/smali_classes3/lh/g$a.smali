.class public final Llh/g$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llh/g;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/p<",
        "Llh/d;",
        "Lr0/b<",
        "+",
        "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanModel;",
        ">;>;",
        "Llh/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Llh/g$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Llh/g$a;

    invoke-direct {v0}, Llh/g$a;-><init>()V

    sput-object v0, Llh/g$a;->a:Llh/g$a;

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
    .locals 7

    .line 1
    check-cast p1, Llh/d;

    .line 2
    .line 3
    move-object v3, p2

    .line 4
    check-cast v3, Lr0/b;

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
    invoke-static {v3, p2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 p2, 0x0

    .line 17
    :try_start_0
    invoke-virtual {v3}, Lr0/b;->a()Ljava/lang/Object;

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
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanModel;

    .line 30
    .line 31
    move-object v4, v0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move-object v4, p2

    .line 34
    :goto_0
    const/4 v1, 0x0

    .line 35
    const/4 v2, 0x0

    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    const/4 v5, 0x3

    .line 39
    const/4 v6, 0x0

    .line 40
    move-object v0, p1

    .line 41
    invoke-static/range {v0 .. v6}, Llh/d;->copy$default(Llh/d;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/GenerateQRModel;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanModel;ILjava/lang/Object;)Llh/d;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const/4 v4, 0x0

    .line 47
    const/16 v5, 0xb

    .line 48
    .line 49
    const/4 v6, 0x0

    .line 50
    const/4 v1, 0x0

    .line 51
    const/4 v2, 0x0

    .line 52
    move-object v0, p1

    .line 53
    invoke-static/range {v0 .. v6}, Llh/d;->copy$default(Llh/d;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/GenerateQRModel;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanModel;ILjava/lang/Object;)Llh/d;

    .line 54
    .line 55
    .line 56
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    goto :goto_1

    .line 58
    :catchall_0
    move-exception v0

    .line 59
    const/4 v1, 0x0

    .line 60
    const/4 v2, 0x0

    .line 61
    new-instance v3, Lr0/i;

    .line 62
    .line 63
    invoke-direct {v3, p2, v0}, Lr0/i;-><init>(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    const/4 v4, 0x0

    .line 67
    const/16 v5, 0xb

    .line 68
    .line 69
    const/4 v6, 0x0

    .line 70
    move-object v0, p1

    .line 71
    invoke-static/range {v0 .. v6}, Llh/d;->copy$default(Llh/d;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/GenerateQRModel;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanModel;ILjava/lang/Object;)Llh/d;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    :goto_1
    return-object p1
.end method
