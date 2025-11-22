.class public final Lzf/l2;
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

    iput-object p1, p0, Lzf/l2;->a:Lzf/d1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;

    .line 2
    .line 3
    iget-object v0, p0, Lzf/l2;->a:Lzf/d1;

    .line 4
    .line 5
    invoke-virtual {v0}, Lzf/d1;->c()Lt8/c;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iput-object v1, p1, Lu8/a;->a:Lt8/c;

    .line 10
    .line 11
    iget-object v1, v0, Lzf/d1;->b:Lvd/d;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    const-string v2, "5057"

    .line 17
    .line 18
    iput-object v2, p1, Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;->b:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v1}, Lbf/b;->a(Lvd/d;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iput-object v1, p1, Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;->c:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 25
    .line 26
    iget-object v1, v0, Lzf/d1;->a:Laf/a;

    .line 27
    .line 28
    check-cast v1, Laf/b;

    .line 29
    .line 30
    invoke-virtual {v1}, Laf/b;->a()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    iput-object v2, p1, Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;->d:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v1}, Laf/b;->f()Landroid/content/SharedPreferences$Editor;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    iput-object v2, p1, Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;->e:Landroid/content/SharedPreferences$Editor;

    .line 41
    .line 42
    invoke-virtual {v1}, Laf/b;->e()Landroid/content/SharedPreferences;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iput-object v1, p1, Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;->f:Landroid/content/SharedPreferences;

    .line 47
    .line 48
    invoke-static {v0}, Lzf/d1;->b(Lzf/d1;)Lgf/b;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iput-object v0, p1, Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;->g:Lgf/b;

    .line 53
    .line 54
    return-void
.end method
