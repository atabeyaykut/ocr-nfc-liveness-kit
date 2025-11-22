.class public final Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;->invalidate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Lkh/d;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment$a;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lkh/d;

    .line 2
    .line 3
    const-string v0, "state"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p1, Lkh/d;->a:Lr0/b;

    .line 9
    .line 10
    instance-of v0, p1, Lr0/d1;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    instance-of v0, p1, Lr0/k;

    .line 17
    .line 18
    :goto_0
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment$a;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-boolean p1, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;->l:Z

    .line 23
    .line 24
    if-eqz p1, :cond_4

    .line 25
    .line 26
    iget-object p1, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;->c:Lv/e;

    .line 27
    .line 28
    if-eqz p1, :cond_4

    .line 29
    .line 30
    invoke-virtual {p1}, Lv/e;->show()V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    instance-of v0, p1, Lr0/c1;

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    sget-object p1, Lyd/a;->a:Lyd/a$a;

    .line 40
    .line 41
    const-string v0, "Success"

    .line 42
    .line 43
    new-array v2, v2, [Ljava/lang/Object;

    .line 44
    .line 45
    invoke-virtual {p1, v0, v2}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    iget-object p1, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;->c:Lv/e;

    .line 49
    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    invoke-virtual {p1}, Lv/e;->dismiss()V

    .line 53
    .line 54
    .line 55
    :cond_2
    invoke-static {v1}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1}, Landroidx/navigation/NavController;->popBackStack()Z

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    instance-of p1, p1, Lr0/i;

    .line 64
    .line 65
    if-eqz p1, :cond_4

    .line 66
    .line 67
    sget-object p1, Lyd/a;->a:Lyd/a$a;

    .line 68
    .line 69
    const-string v0, "Error"

    .line 70
    .line 71
    new-array v1, v2, [Ljava/lang/Object;

    .line 72
    .line 73
    invoke-virtual {p1, v0, v1}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    :cond_4
    :goto_1
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 77
    .line 78
    return-object p1
.end method
