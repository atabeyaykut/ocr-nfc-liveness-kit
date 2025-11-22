.class public final Lhh/g$e$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhh/g$e;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/p<",
        "Lhh/f;",
        "Lr0/b<",
        "+",
        "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveModel;",
        ">;>;",
        "Lhh/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lhh/g$e$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lhh/g$e$a;

    invoke-direct {v0}, Lhh/g$e$a;-><init>()V

    sput-object v0, Lhh/g$e$a;->a:Lhh/g$e$a;

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
    .locals 11

    .line 1
    check-cast p1, Lhh/f;

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
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveModel;

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
    const/4 v1, 0x0

    .line 35
    const/4 v2, 0x0

    .line 36
    const/4 v4, 0x0

    .line 37
    if-eqz v5, :cond_1

    .line 38
    .line 39
    const/4 v6, 0x0

    .line 40
    const/4 v7, 0x0

    .line 41
    const-string v8, "saveLocation"

    .line 42
    .line 43
    const/16 v9, 0x6b

    .line 44
    .line 45
    const/4 v10, 0x0

    .line 46
    move-object v0, p1

    .line 47
    invoke-static/range {v0 .. v10}, Lhh/f;->copy$default(Lhh/f;Lr0/b;Lr0/b;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PhotoSaveModel;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveModel;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DescriptionSaveModel;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)Lhh/f;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    const/4 v5, 0x0

    .line 53
    const/4 v6, 0x0

    .line 54
    const/4 v7, 0x0

    .line 55
    const-string v8, "saveLocation"

    .line 56
    .line 57
    const/16 v9, 0x7b

    .line 58
    .line 59
    const/4 v10, 0x0

    .line 60
    const/4 v1, 0x0

    .line 61
    const/4 v2, 0x0

    .line 62
    const/4 v4, 0x0

    .line 63
    move-object v0, p1

    .line 64
    invoke-static/range {v0 .. v10}, Lhh/f;->copy$default(Lhh/f;Lr0/b;Lr0/b;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PhotoSaveModel;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveModel;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DescriptionSaveModel;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)Lhh/f;

    .line 65
    .line 66
    .line 67
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    goto :goto_1

    .line 69
    :catchall_0
    move-exception v0

    .line 70
    const/4 v1, 0x0

    .line 71
    const/4 v2, 0x0

    .line 72
    new-instance v3, Lr0/i;

    .line 73
    .line 74
    invoke-direct {v3, p2, v0}, Lr0/i;-><init>(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 75
    .line 76
    .line 77
    const/4 v4, 0x0

    .line 78
    const/4 v5, 0x0

    .line 79
    const/4 v6, 0x0

    .line 80
    const/4 v7, 0x0

    .line 81
    const-string v8, "saveLocation"

    .line 82
    .line 83
    const/16 v9, 0x7b

    .line 84
    .line 85
    const/4 v10, 0x0

    .line 86
    move-object v0, p1

    .line 87
    invoke-static/range {v0 .. v10}, Lhh/f;->copy$default(Lhh/f;Lr0/b;Lr0/b;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PhotoSaveModel;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveModel;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DescriptionSaveModel;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)Lhh/f;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    :goto_1
    return-object p1
.end method
