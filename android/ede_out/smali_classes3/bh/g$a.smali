.class public final Lbh/g$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbh/g;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/p<",
        "Lbh/b;",
        "Lr0/b<",
        "+",
        "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/QuestionSetModel;",
        ">;>;",
        "Lbh/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lbh/g$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbh/g$a;

    invoke-direct {v0}, Lbh/g$a;-><init>()V

    sput-object v0, Lbh/g$a;->a:Lbh/g$a;

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
    check-cast p1, Lbh/b;

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
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/QuestionSetModel;

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
    const/4 v2, 0x0

    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    const/4 v4, 0x1

    .line 38
    const/4 v5, 0x0

    .line 39
    const/16 v6, 0x12

    .line 40
    .line 41
    const/4 v7, 0x0

    .line 42
    move-object v0, p1

    .line 43
    invoke-static/range {v0 .. v7}, Lbh/b;->copy$default(Lbh/b;Lr0/b;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/QuestionSetModel;ZLtr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeResponseModel;ILjava/lang/Object;)Lbh/b;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    const/4 v3, 0x0

    .line 49
    const/4 v4, 0x1

    .line 50
    const/4 v5, 0x0

    .line 51
    const/16 v6, 0x16

    .line 52
    .line 53
    const/4 v7, 0x0

    .line 54
    const/4 v2, 0x0

    .line 55
    move-object v0, p1

    .line 56
    invoke-static/range {v0 .. v7}, Lbh/b;->copy$default(Lbh/b;Lr0/b;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/QuestionSetModel;ZLtr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeResponseModel;ILjava/lang/Object;)Lbh/b;

    .line 57
    .line 58
    .line 59
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    goto :goto_1

    .line 61
    :catchall_0
    move-exception v0

    .line 62
    new-instance v1, Lr0/i;

    .line 63
    .line 64
    invoke-direct {v1, p2, v0}, Lr0/i;-><init>(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    const/4 v2, 0x0

    .line 68
    const/4 v3, 0x0

    .line 69
    const/4 v4, 0x1

    .line 70
    const/4 v5, 0x0

    .line 71
    const/16 v6, 0x16

    .line 72
    .line 73
    const/4 v7, 0x0

    .line 74
    move-object v0, p1

    .line 75
    invoke-static/range {v0 .. v7}, Lbh/b;->copy$default(Lbh/b;Lr0/b;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/QuestionSetModel;ZLtr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeResponseModel;ILjava/lang/Object;)Lbh/b;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    :goto_1
    return-object p1
.end method
