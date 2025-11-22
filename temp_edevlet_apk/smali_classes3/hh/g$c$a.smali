.class public final Lhh/g$c$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhh/g$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DescriptionSaveModel;",
        ">;>;",
        "Lhh/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lhh/g$c$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lhh/g$c$a;

    invoke-direct {v0}, Lhh/g$c$a;-><init>()V

    sput-object v0, Lhh/g$c$a;->a:Lhh/g$c$a;

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
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DescriptionSaveModel;

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
    if-eqz v6, :cond_1

    .line 35
    .line 36
    sget-object v0, Lyd/a;->a:Lyd/a$a;

    .line 37
    .line 38
    const-string v1, "success description"

    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    new-array v3, v3, [Ljava/lang/Object;

    .line 42
    .line 43
    invoke-virtual {v0, v1, v3}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    const/4 v3, 0x0

    .line 48
    const/4 v4, 0x0

    .line 49
    const/4 v5, 0x0

    .line 50
    const/4 v7, 0x0

    .line 51
    const-string v8, "saveDescription"

    .line 52
    .line 53
    const/16 v9, 0x5d

    .line 54
    .line 55
    const/4 v10, 0x0

    .line 56
    move-object v0, p1

    .line 57
    invoke-static/range {v0 .. v10}, Lhh/f;->copy$default(Lhh/f;Lr0/b;Lr0/b;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PhotoSaveModel;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveModel;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DescriptionSaveModel;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)Lhh/f;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    const/4 v1, 0x0

    .line 63
    const/4 v3, 0x0

    .line 64
    const/4 v4, 0x0

    .line 65
    const/4 v5, 0x0

    .line 66
    const/4 v6, 0x0

    .line 67
    const/4 v7, 0x0

    .line 68
    const-string v8, "saveDescription"

    .line 69
    .line 70
    const/16 v9, 0x7d

    .line 71
    .line 72
    const/4 v10, 0x0

    .line 73
    move-object v0, p1

    .line 74
    invoke-static/range {v0 .. v10}, Lhh/f;->copy$default(Lhh/f;Lr0/b;Lr0/b;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PhotoSaveModel;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveModel;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DescriptionSaveModel;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)Lhh/f;

    .line 75
    .line 76
    .line 77
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    goto :goto_1

    .line 79
    :catchall_0
    move-exception v0

    .line 80
    const/4 v1, 0x0

    .line 81
    new-instance v2, Lr0/i;

    .line 82
    .line 83
    invoke-direct {v2, p2, v0}, Lr0/i;-><init>(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 84
    .line 85
    .line 86
    const/4 v3, 0x0

    .line 87
    const/4 v4, 0x0

    .line 88
    const/4 v5, 0x0

    .line 89
    const/4 v6, 0x0

    .line 90
    const/4 v7, 0x0

    .line 91
    const-string v8, "saveDescription"

    .line 92
    .line 93
    const/16 v9, 0x7d

    .line 94
    .line 95
    const/4 v10, 0x0

    .line 96
    move-object v0, p1

    .line 97
    invoke-static/range {v0 .. v10}, Lhh/f;->copy$default(Lhh/f;Lr0/b;Lr0/b;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PhotoSaveModel;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveModel;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DescriptionSaveModel;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)Lhh/f;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    :goto_1
    return-object p1
.end method
