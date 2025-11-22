.class public final Ldh/k;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Ldh/e;",
        "Ldh/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ldh/k;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldh/k;

    invoke-direct {v0}, Ldh/k;-><init>()V

    sput-object v0, Ldh/k;->a:Ldh/k;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Ldh/e;

    .line 3
    .line 4
    const-string p1, "$this$setState"

    .line 5
    .line 6
    invoke-static {v0, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    sget-object v3, Lr0/d1;->b:Lr0/d1;

    .line 12
    .line 13
    const-string v4, "SaveVehicle"

    .line 14
    .line 15
    const/4 v5, 0x0

    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v7, 0x0

    .line 18
    const/16 v8, 0x73

    .line 19
    .line 20
    const/4 v9, 0x0

    .line 21
    invoke-static/range {v0 .. v9}, Ldh/e;->copy$default(Ldh/e;Lr0/b;Lr0/b;Lr0/b;Ljava/lang/String;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleListModel;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveModel;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleSaveModel;ILjava/lang/Object;)Ldh/e;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method
