.class public final Ldh/m$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldh/m;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleSaveModel;",
        ">;>;",
        "Ldh/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ldh/m$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldh/m$a;

    invoke-direct {v0}, Ldh/m$a;-><init>()V

    sput-object v0, Ldh/m$a;->a:Ldh/m$a;

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
    check-cast p1, Ldh/e;

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
    const/4 v10, 0x0

    .line 18
    :try_start_0
    invoke-virtual {v3}, Lr0/b;->a()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;->getOrThrow()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleSaveModel;

    .line 31
    .line 32
    move-object v7, v0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move-object v7, p2

    .line 35
    :goto_0
    if-eqz v7, :cond_1

    .line 36
    .line 37
    sget-object v0, Lyd/a;->a:Lyd/a$a;

    .line 38
    .line 39
    const-string v1, "Test v2"

    .line 40
    .line 41
    new-array v2, v10, [Ljava/lang/Object;

    .line 42
    .line 43
    invoke-virtual {v0, v1, v2}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    const/4 v2, 0x0

    .line 48
    const-string v4, "SaveVehicle"

    .line 49
    .line 50
    const/4 v5, 0x0

    .line 51
    const/4 v6, 0x0

    .line 52
    const/16 v8, 0x33

    .line 53
    .line 54
    const/4 v9, 0x0

    .line 55
    move-object v0, p1

    .line 56
    invoke-static/range {v0 .. v9}, Ldh/e;->copy$default(Ldh/e;Lr0/b;Lr0/b;Lr0/b;Ljava/lang/String;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleListModel;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveModel;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleSaveModel;ILjava/lang/Object;)Ldh/e;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    sget-object v0, Lyd/a;->a:Lyd/a$a;

    .line 62
    .line 63
    const-string v1, "Test v0"

    .line 64
    .line 65
    new-array v2, v10, [Ljava/lang/Object;

    .line 66
    .line 67
    invoke-virtual {v0, v1, v2}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    const/4 v1, 0x0

    .line 71
    const/4 v2, 0x0

    .line 72
    const-string v4, "SaveVehicle"

    .line 73
    .line 74
    const/4 v5, 0x0

    .line 75
    const/4 v6, 0x0

    .line 76
    const/4 v7, 0x0

    .line 77
    const/16 v8, 0x73

    .line 78
    .line 79
    const/4 v9, 0x0

    .line 80
    move-object v0, p1

    .line 81
    invoke-static/range {v0 .. v9}, Ldh/e;->copy$default(Ldh/e;Lr0/b;Lr0/b;Lr0/b;Ljava/lang/String;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleListModel;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveModel;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleSaveModel;ILjava/lang/Object;)Ldh/e;

    .line 82
    .line 83
    .line 84
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    goto :goto_1

    .line 86
    :catchall_0
    move-exception v0

    .line 87
    sget-object v1, Lyd/a;->a:Lyd/a$a;

    .line 88
    .line 89
    const-string v2, "Test v1"

    .line 90
    .line 91
    new-array v3, v10, [Ljava/lang/Object;

    .line 92
    .line 93
    invoke-virtual {v1, v2, v3}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    const/4 v1, 0x0

    .line 97
    const/4 v2, 0x0

    .line 98
    new-instance v3, Lr0/i;

    .line 99
    .line 100
    invoke-direct {v3, p2, v0}, Lr0/i;-><init>(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 101
    .line 102
    .line 103
    const-string v4, "SaveVehicle"

    .line 104
    .line 105
    const/4 v5, 0x0

    .line 106
    const/4 v6, 0x0

    .line 107
    const/4 v7, 0x0

    .line 108
    const/16 v8, 0x73

    .line 109
    .line 110
    const/4 v9, 0x0

    .line 111
    move-object v0, p1

    .line 112
    invoke-static/range {v0 .. v9}, Ldh/e;->copy$default(Ldh/e;Lr0/b;Lr0/b;Lr0/b;Ljava/lang/String;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleListModel;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveModel;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleSaveModel;ILjava/lang/Object;)Ldh/e;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    :goto_1
    return-object p1
.end method
