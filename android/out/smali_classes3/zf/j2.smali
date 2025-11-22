.class public final Lzf/j2;
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

    iput-object p1, p0, Lzf/j2;->a:Lzf/d1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;

    .line 2
    .line 3
    iget-object v0, p0, Lzf/j2;->a:Lzf/d1;

    .line 4
    .line 5
    invoke-static {v0}, Lzf/d1;->b(Lzf/d1;)Lgf/b;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iput-object v1, p1, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;->a:Lgf/b;

    .line 10
    .line 11
    iget-object v0, v0, Lzf/d1;->b:Lvd/d;

    .line 12
    .line 13
    invoke-static {v0}, Lbf/b;->a(Lvd/d;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p1, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;->b:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 18
    .line 19
    return-void
.end method
