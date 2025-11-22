.class public final Lkh/g$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkh/g;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/p<",
        "Lkh/d;",
        "Lr0/b<",
        "+",
        "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveModel;",
        ">;>;",
        "Lkh/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lkh/g$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkh/g$a;

    invoke-direct {v0}, Lkh/g$a;-><init>()V

    sput-object v0, Lkh/g$a;->a:Lkh/g$a;

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
    .locals 4

    .line 1
    check-cast p1, Lkh/d;

    .line 2
    .line 3
    check-cast p2, Lr0/b;

    .line 4
    .line 5
    const-string v0, "$this$execute"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "result"

    .line 11
    .line 12
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x2

    .line 16
    const/4 v1, 0x0

    .line 17
    :try_start_0
    invoke-virtual {p2}, Lr0/b;->a()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;->getOrThrow()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveModel;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move-object v2, v1

    .line 33
    :goto_0
    if-eqz v2, :cond_1

    .line 34
    .line 35
    new-instance v3, Lkh/d;

    .line 36
    .line 37
    invoke-direct {v3, p2, v2}, Lkh/d;-><init>(Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveModel;)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    invoke-static {p1, p2, v1, v0, v1}, Lkh/d;->copy$default(Lkh/d;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveModel;ILjava/lang/Object;)Lkh/d;

    .line 42
    .line 43
    .line 44
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    goto :goto_1

    .line 46
    :catchall_0
    move-exception p2

    .line 47
    new-instance v2, Lr0/i;

    .line 48
    .line 49
    invoke-direct {v2, v1, p2}, Lr0/i;-><init>(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    invoke-static {p1, v2, v1, v0, v1}, Lkh/d;->copy$default(Lkh/d;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveModel;ILjava/lang/Object;)Lkh/d;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    :goto_1
    return-object v3
.end method
