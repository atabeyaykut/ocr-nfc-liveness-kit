.class public final Lag/f$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lag/f;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/p<",
        "Lag/c;",
        "Lr0/b<",
        "+",
        "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
        "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;",
        ">;>;",
        "Lag/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lag/f$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lag/f$a;

    invoke-direct {v0}, Lag/f$a;-><init>()V

    sput-object v0, Lag/f$a;->a:Lag/f$a;

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
    check-cast p1, Lag/c;

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
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 30
    .line 31
    move-object v6, v0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move-object v6, p2

    .line 34
    :goto_0
    const/4 v1, 0x0

    .line 35
    const/4 v2, 0x0

    .line 36
    const/4 v4, 0x1

    .line 37
    const/4 v5, 0x0

    .line 38
    if-eqz v6, :cond_1

    .line 39
    .line 40
    const/4 v7, 0x3

    .line 41
    const/4 v8, 0x0

    .line 42
    move-object v0, p1

    .line 43
    invoke-static/range {v0 .. v8}, Lag/c;->copy$default(Lag/c;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;Lr0/b;ZZLtr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;ILjava/lang/Object;)Lag/c;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    const/4 v6, 0x0

    .line 49
    const/16 v7, 0x23

    .line 50
    .line 51
    const/4 v8, 0x0

    .line 52
    const/4 v1, 0x0

    .line 53
    const/4 v2, 0x0

    .line 54
    const/4 v4, 0x1

    .line 55
    const/4 v5, 0x0

    .line 56
    move-object v0, p1

    .line 57
    invoke-static/range {v0 .. v8}, Lag/c;->copy$default(Lag/c;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;Lr0/b;ZZLtr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;ILjava/lang/Object;)Lag/c;

    .line 58
    .line 59
    .line 60
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    goto :goto_1

    .line 62
    :catchall_0
    move-exception v0

    .line 63
    new-instance v3, Lr0/i;

    .line 64
    .line 65
    invoke-direct {v3, p2, v0}, Lr0/i;-><init>(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    const/4 v1, 0x0

    .line 69
    const/4 v2, 0x0

    .line 70
    const/4 v4, 0x1

    .line 71
    const/4 v5, 0x0

    .line 72
    const/4 v6, 0x0

    .line 73
    const/16 v7, 0x23

    .line 74
    .line 75
    const/4 v8, 0x0

    .line 76
    move-object v0, p1

    .line 77
    invoke-static/range {v0 .. v8}, Lag/c;->copy$default(Lag/c;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;Lr0/b;ZZLtr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;ILjava/lang/Object;)Lag/c;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    :goto_1
    return-object p1
.end method
