.class public final synthetic Lxg/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/navigation/ui/AppBarConfiguration$OnNavigateUpListener;


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/MobileAccidentReportActivity;


# direct methods
.method public synthetic constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/MobileAccidentReportActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxg/a;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/MobileAccidentReportActivity;

    return-void
.end method


# virtual methods
.method public final onNavigateUp()Z
    .locals 2

    .line 1
    sget v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/MobileAccidentReportActivity;->e:I

    .line 2
    .line 3
    const-string v0, "this$0"

    .line 4
    .line 5
    iget-object v1, p0, Lxg/a;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/MobileAccidentReportActivity;

    .line 6
    .line 7
    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/app/Activity;->onNavigateUp()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    return v0
.end method
