.class public final Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;->C()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Landroid/location/Location;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity$a;->a:Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Landroid/location/Location;

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity$a;->a:Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;

    .line 7
    .line 8
    iput-boolean v0, v1, Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;->N:Z

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput v0, v1, Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;->Y:F

    .line 15
    .line 16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 17
    .line 18
    const/16 v2, 0x1a

    .line 19
    .line 20
    if-lt v0, v2, :cond_0

    .line 21
    .line 22
    invoke-static {p1}, Landroidx/appcompat/widget/j;->p(Landroid/location/Location;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-static {p1}, Landroidx/appcompat/app/e;->c(Landroid/location/Location;)F

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 34
    :goto_0
    iput v0, v1, Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;->Z:F

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    .line 37
    .line 38
    .line 39
    move-result-wide v2

    .line 40
    iput-wide v2, v1, Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;->a0:D

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    .line 43
    .line 44
    .line 45
    move-result-wide v2

    .line 46
    iput-wide v2, v1, Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;->h0:D

    .line 47
    .line 48
    :cond_1
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 49
    .line 50
    return-object p1
.end method
