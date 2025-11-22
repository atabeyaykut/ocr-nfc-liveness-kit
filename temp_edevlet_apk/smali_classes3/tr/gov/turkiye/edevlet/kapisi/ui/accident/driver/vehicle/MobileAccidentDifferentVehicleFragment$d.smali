.class public final Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/vehicle/MobileAccidentDifferentVehicleFragment$d;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/vehicle/MobileAccidentDifferentVehicleFragment;->I(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Lv/e;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/vehicle/MobileAccidentDifferentVehicleFragment$d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/vehicle/MobileAccidentDifferentVehicleFragment$d;

    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/vehicle/MobileAccidentDifferentVehicleFragment$d;-><init>()V

    sput-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/vehicle/MobileAccidentDifferentVehicleFragment$d;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/vehicle/MobileAccidentDifferentVehicleFragment$d;

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
    .locals 1

    .line 1
    check-cast p1, Lv/e;

    .line 2
    .line 3
    const-string v0, "dialog"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lv/e;->dismiss()V

    .line 9
    .line 10
    .line 11
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 12
    .line 13
    return-object p1
.end method
