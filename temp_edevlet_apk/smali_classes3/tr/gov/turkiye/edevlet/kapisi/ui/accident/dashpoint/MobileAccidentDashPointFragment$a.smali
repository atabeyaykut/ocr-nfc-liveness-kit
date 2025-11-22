.class public final Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;->invalidate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Lch/k;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment$a;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lch/k;

    .line 2
    .line 3
    const-string v0, "state"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p1, Lch/k;->a:Lr0/b;

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
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment$a;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-boolean p1, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;->f:Z

    .line 23
    .line 24
    if-eqz p1, :cond_6

    .line 25
    .line 26
    iget-object p1, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;->c:Lv/e;

    .line 27
    .line 28
    if-eqz p1, :cond_6

    .line 29
    .line 30
    invoke-virtual {p1}, Lv/e;->show()V

    .line 31
    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_1
    instance-of v0, p1, Lr0/c1;

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    if-eqz v0, :cond_5

    .line 38
    .line 39
    iget-object p1, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;->c:Lv/e;

    .line 40
    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    invoke-virtual {p1}, Lv/e;->dismiss()V

    .line 44
    .line 45
    .line 46
    :cond_2
    iget-boolean p1, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;->f:Z

    .line 47
    .line 48
    if-eqz p1, :cond_4

    .line 49
    .line 50
    iput-boolean v2, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;->f:Z

    .line 51
    .line 52
    iget-object p1, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;->g:Ljava/lang/String;

    .line 53
    .line 54
    const-string v0, "HOST"

    .line 55
    .line 56
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_3

    .line 61
    .line 62
    invoke-static {v1}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    const v0, 0x7f0a0278

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    invoke-static {v1}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    const v0, 0x7f0a026f

    .line 75
    .line 76
    .line 77
    :goto_1
    invoke-virtual {p1, v0}, Landroidx/navigation/NavController;->navigate(I)V

    .line 78
    .line 79
    .line 80
    :cond_4
    sget-object p1, Lyd/a;->a:Lyd/a$a;

    .line 81
    .line 82
    const-string v0, "Success Dashpoint"

    .line 83
    .line 84
    new-array v1, v2, [Ljava/lang/Object;

    .line 85
    .line 86
    invoke-virtual {p1, v0, v1}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_5
    instance-of p1, p1, Lr0/i;

    .line 91
    .line 92
    if-eqz p1, :cond_6

    .line 93
    .line 94
    sget-object p1, Lyd/a;->a:Lyd/a$a;

    .line 95
    .line 96
    const-string v0, "Fail Dashpoint"

    .line 97
    .line 98
    new-array v2, v2, [Ljava/lang/Object;

    .line 99
    .line 100
    invoke-virtual {p1, v0, v2}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    iget-object p1, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;->c:Lv/e;

    .line 104
    .line 105
    if-eqz p1, :cond_6

    .line 106
    .line 107
    invoke-virtual {p1}, Lv/e;->dismiss()V

    .line 108
    .line 109
    .line 110
    :cond_6
    :goto_2
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 111
    .line 112
    return-object p1
.end method
