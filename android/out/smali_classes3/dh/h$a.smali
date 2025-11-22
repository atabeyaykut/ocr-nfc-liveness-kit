.class public final Ldh/h$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldh/h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/p<",
        "Ldh/e;",
        "Lr0/b<",
        "+",
        "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleListModel;",
        ">;>;",
        "Ldh/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ldh/h$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldh/h$a;

    invoke-direct {v0}, Ldh/h$a;-><init>()V

    sput-object v0, Ldh/h$a;->a:Ldh/h$a;

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
    .locals 10

    .line 1
    check-cast p1, Ldh/e;

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
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleListModel;

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
    const/4 v2, 0x0

    .line 35
    const/4 v3, 0x0

    .line 36
    if-eqz v5, :cond_1

    .line 37
    .line 38
    const-string v4, "ListOfCar"

    .line 39
    .line 40
    const/4 v6, 0x0

    .line 41
    const/4 v7, 0x0

    .line 42
    const/16 v8, 0x66

    .line 43
    .line 44
    const/4 v9, 0x0

    .line 45
    move-object v0, p1

    .line 46
    invoke-static/range {v0 .. v9}, Ldh/e;->copy$default(Ldh/e;Lr0/b;Lr0/b;Lr0/b;Ljava/lang/String;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleListModel;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveModel;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleSaveModel;ILjava/lang/Object;)Ldh/e;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    const-string v4, "ListOfCar"

    .line 52
    .line 53
    const/4 v5, 0x0

    .line 54
    const/4 v6, 0x0

    .line 55
    const/4 v7, 0x0

    .line 56
    const/16 v8, 0x76

    .line 57
    .line 58
    const/4 v9, 0x0

    .line 59
    const/4 v2, 0x0

    .line 60
    const/4 v3, 0x0

    .line 61
    move-object v0, p1

    .line 62
    invoke-static/range {v0 .. v9}, Ldh/e;->copy$default(Ldh/e;Lr0/b;Lr0/b;Lr0/b;Ljava/lang/String;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleListModel;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveModel;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleSaveModel;ILjava/lang/Object;)Ldh/e;

    .line 63
    .line 64
    .line 65
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    goto :goto_1

    .line 67
    :catchall_0
    move-exception v0

    .line 68
    new-instance v1, Lr0/i;

    .line 69
    .line 70
    invoke-direct {v1, p2, v0}, Lr0/i;-><init>(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 71
    .line 72
    .line 73
    const/4 v2, 0x0

    .line 74
    const/4 v3, 0x0

    .line 75
    const-string v4, "ListOfCar"

    .line 76
    .line 77
    const/4 v5, 0x0

    .line 78
    const/4 v6, 0x0

    .line 79
    const/4 v7, 0x0

    .line 80
    const/16 v8, 0x76

    .line 81
    .line 82
    const/4 v9, 0x0

    .line 83
    move-object v0, p1

    .line 84
    invoke-static/range {v0 .. v9}, Ldh/e;->copy$default(Ldh/e;Lr0/b;Lr0/b;Lr0/b;Ljava/lang/String;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleListModel;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveModel;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleSaveModel;ILjava/lang/Object;)Ldh/e;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    :goto_1
    return-object p1
.end method
