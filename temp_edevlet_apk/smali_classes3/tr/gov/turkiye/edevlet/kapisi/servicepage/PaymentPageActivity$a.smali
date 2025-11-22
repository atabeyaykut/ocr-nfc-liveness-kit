.class public final Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->x()V
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


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity$a;->a:Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

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
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity$a;->a:Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 14
    .line 15
    .line 16
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 17
    .line 18
    return-object p1
.end method
