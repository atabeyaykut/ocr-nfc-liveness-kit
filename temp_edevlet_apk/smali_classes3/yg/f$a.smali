.class public final Lyg/f$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyg/f;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/p<",
        "Lyg/c;",
        "Lr0/b<",
        "+",
        "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CheckClarificationModel;",
        ">;>;",
        "Lyg/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lyg/f$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyg/f$a;

    invoke-direct {v0}, Lyg/f$a;-><init>()V

    sput-object v0, Lyg/f$a;->a:Lyg/f$a;

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
    check-cast p1, Lyg/c;

    .line 2
    .line 3
    move-object v2, p2

    .line 4
    check-cast v2, Lr0/b;

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
    invoke-static {v2, p2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 p2, 0x0

    .line 17
    :try_start_0
    invoke-virtual {v2}, Lr0/b;->a()Ljava/lang/Object;

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
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CheckClarificationModel;

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
    const/4 v3, 0x0

    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    const/4 v5, 0x5

    .line 39
    const/4 v6, 0x0

    .line 40
    move-object v0, p1

    .line 41
    invoke-static/range {v0 .. v6}, Lyg/c;->copy$default(Lyg/c;Lr0/b;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AgreementModel;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CheckClarificationModel;ILjava/lang/Object;)Lyg/c;

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
    const/16 v5, 0xd

    .line 48
    .line 49
    const/4 v6, 0x0

    .line 50
    const/4 v1, 0x0

    .line 51
    const/4 v3, 0x0

    .line 52
    move-object v0, p1

    .line 53
    invoke-static/range {v0 .. v6}, Lyg/c;->copy$default(Lyg/c;Lr0/b;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AgreementModel;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CheckClarificationModel;ILjava/lang/Object;)Lyg/c;

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
    new-instance v2, Lr0/i;

    .line 61
    .line 62
    invoke-direct {v2, p2, v0}, Lr0/i;-><init>(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    const/4 v3, 0x0

    .line 66
    const/4 v4, 0x0

    .line 67
    const/16 v5, 0xd

    .line 68
    .line 69
    const/4 v6, 0x0

    .line 70
    move-object v0, p1

    .line 71
    invoke-static/range {v0 .. v6}, Lyg/c;->copy$default(Lyg/c;Lr0/b;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AgreementModel;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CheckClarificationModel;ILjava/lang/Object;)Lyg/c;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    :goto_1
    return-object p1
.end method
