.class public final synthetic Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$e;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation


# static fields
.field public static final a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$e;

    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$e;-><init>()V

    sput-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$e;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$e;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-class v0, Lrh/c;

    const-string v1, "completedReportListState"

    const-string v2, "getCompletedReportListState()Lcom/airbnb/mvrx/Async;"

    invoke-direct {p0, v0, v1, v2}, Lkotlin/jvm/internal/r;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lrh/c;

    .line 2
    .line 3
    iget-object p1, p1, Lrh/c;->c:Lr0/b;

    .line 4
    .line 5
    return-object p1
.end method
