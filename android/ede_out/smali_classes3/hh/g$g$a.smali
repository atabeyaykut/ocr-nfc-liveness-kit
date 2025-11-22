.class public final Lhh/g$g$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhh/g$g;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PhotoSaveModel;",
        ">;>;",
        "Lhh/f;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lhh/g$g$a;->a:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    check-cast p1, Lhh/f;

    .line 2
    .line 3
    move-object v1, p2

    .line 4
    check-cast v1, Lr0/b;

    .line 5
    .line 6
    iget p2, p0, Lhh/g$g$a;->a:I

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
    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 v11, 0x0

    .line 19
    :try_start_0
    invoke-virtual {v1}, Lr0/b;->a()Ljava/lang/Object;

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
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PhotoSaveModel;

    .line 32
    .line 33
    move-object v4, v0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move-object v4, v11

    .line 36
    :goto_0
    const/4 v2, 0x0

    .line 37
    const/4 v3, 0x0

    .line 38
    if-eqz v4, :cond_1

    .line 39
    .line 40
    const/4 v5, 0x0

    .line 41
    const/4 v6, 0x0

    .line 42
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    const-string v8, "saveMedia"

    .line 47
    .line 48
    const/16 v9, 0x36

    .line 49
    .line 50
    const/4 v10, 0x0

    .line 51
    move-object v0, p1

    .line 52
    invoke-static/range {v0 .. v10}, Lhh/f;->copy$default(Lhh/f;Lr0/b;Lr0/b;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PhotoSaveModel;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveModel;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DescriptionSaveModel;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)Lhh/f;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    const/4 v4, 0x0

    .line 58
    const/4 v5, 0x0

    .line 59
    const/4 v6, 0x0

    .line 60
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    const-string v8, "saveMedia"

    .line 65
    .line 66
    const/16 v9, 0x3e

    .line 67
    .line 68
    const/4 v10, 0x0

    .line 69
    const/4 v2, 0x0

    .line 70
    const/4 v3, 0x0

    .line 71
    move-object v0, p1

    .line 72
    invoke-static/range {v0 .. v10}, Lhh/f;->copy$default(Lhh/f;Lr0/b;Lr0/b;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PhotoSaveModel;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveModel;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DescriptionSaveModel;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)Lhh/f;

    .line 73
    .line 74
    .line 75
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    goto :goto_1

    .line 77
    :catchall_0
    move-exception v0

    .line 78
    new-instance v1, Lr0/i;

    .line 79
    .line 80
    invoke-direct {v1, v11, v0}, Lr0/i;-><init>(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 81
    .line 82
    .line 83
    const/4 v2, 0x0

    .line 84
    const/4 v3, 0x0

    .line 85
    const/4 v4, 0x0

    .line 86
    const/4 v5, 0x0

    .line 87
    const/4 v6, 0x0

    .line 88
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    const-string v8, "saveMedia"

    .line 93
    .line 94
    const/16 v9, 0x3e

    .line 95
    .line 96
    const/4 v10, 0x0

    .line 97
    move-object v0, p1

    .line 98
    invoke-static/range {v0 .. v10}, Lhh/f;->copy$default(Lhh/f;Lr0/b;Lr0/b;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PhotoSaveModel;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveModel;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DescriptionSaveModel;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)Lhh/f;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    :goto_1
    return-object p1
.end method
