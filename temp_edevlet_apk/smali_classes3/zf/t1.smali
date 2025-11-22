.class public final Lzf/t1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt8/a;


# instance fields
.field public final a:Lzf/d1;


# direct methods
.method public constructor <init>(Lzf/d1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzf/t1;->a:Lzf/d1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;

    .line 2
    .line 3
    iget-object v0, p0, Lzf/t1;->a:Lzf/d1;

    .line 4
    .line 5
    iget-object v1, v0, Lzf/d1;->b:Lvd/d;

    .line 6
    .line 7
    invoke-static {v1}, Lbf/b;->a(Lvd/d;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iput-object v1, p1, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->a:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 12
    .line 13
    invoke-static {v0}, Lzf/d1;->b(Lzf/d1;)Lgf/b;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iput-object v1, p1, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->b:Lgf/b;

    .line 18
    .line 19
    iget-object v0, v0, Lzf/d1;->a:Laf/a;

    .line 20
    .line 21
    check-cast v0, Laf/b;

    .line 22
    .line 23
    invoke-virtual {v0}, Laf/b;->a()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p1, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->c:Ljava/lang/String;

    .line 28
    .line 29
    return-void
.end method
