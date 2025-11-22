.class public final Lzf/v4;
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

    iput-object p1, p0, Lzf/v4;->a:Lzf/d1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;

    .line 2
    .line 3
    iget-object v0, p0, Lzf/v4;->a:Lzf/d1;

    .line 4
    .line 5
    iget-object v1, v0, Lzf/d1;->a:Laf/a;

    .line 6
    .line 7
    check-cast v1, Laf/b;

    .line 8
    .line 9
    invoke-virtual {v1}, Laf/b;->a()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iput-object v1, p1, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->a:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v1, v0, Lzf/d1;->a:Laf/a;

    .line 16
    .line 17
    check-cast v1, Laf/b;

    .line 18
    .line 19
    invoke-virtual {v1}, Laf/b;->f()Landroid/content/SharedPreferences$Editor;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iput-object v2, p1, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->b:Landroid/content/SharedPreferences$Editor;

    .line 24
    .line 25
    invoke-virtual {v1}, Laf/b;->e()Landroid/content/SharedPreferences;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iput-object v1, p1, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->c:Landroid/content/SharedPreferences;

    .line 30
    .line 31
    iget-object v0, v0, Lzf/d1;->b:Lvd/d;

    .line 32
    .line 33
    invoke-static {v0}, Lbf/b;->a(Lvd/d;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p1, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->d:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 38
    .line 39
    return-void
.end method
