.class public final Lzf/t2;
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

    iput-object p1, p0, Lzf/t2;->a:Lzf/d1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment;

    .line 2
    .line 3
    iget-object v0, p0, Lzf/t2;->a:Lzf/d1;

    .line 4
    .line 5
    invoke-static {v0}, Lzf/d1;->b(Lzf/d1;)Lgf/b;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object p1, v0, Lzf/d1;->b:Lvd/d;

    .line 12
    .line 13
    invoke-static {p1}, Lbf/b;->a(Lvd/d;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 14
    .line 15
    .line 16
    iget-object p1, v0, Lzf/d1;->a:Laf/a;

    .line 17
    .line 18
    check-cast p1, Laf/b;

    .line 19
    .line 20
    invoke-virtual {p1}, Laf/b;->e()Landroid/content/SharedPreferences;

    .line 21
    .line 22
    .line 23
    return-void
.end method
