.class public final Lzf/d2;
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

    iput-object p1, p0, Lzf/d2;->a:Lzf/d1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/services/firm/FirmCategoryListFragment;

    .line 2
    .line 3
    iget-object v0, p0, Lzf/d2;->a:Lzf/d1;

    .line 4
    .line 5
    iget-object v0, v0, Lzf/d1;->b:Lvd/d;

    .line 6
    .line 7
    invoke-static {v0}, Lbf/b;->a(Lvd/d;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p1, Ltr/gov/turkiye/edevlet/kapisi/services/firm/FirmCategoryListFragment;->a:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 12
    .line 13
    return-void
.end method
