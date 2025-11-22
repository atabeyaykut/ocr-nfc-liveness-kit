.class public final synthetic Lyh/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;->j:[Lda/m;

    .line 2
    .line 3
    sget-object p1, Lyd/a;->a:Lyd/a$a;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    .line 8
    const-string v1, "Cancel"

    .line 9
    .line 10
    invoke-virtual {p1, v1, v0}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
