.class public final Lga/f$e;
.super Lga/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lga/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public final a:Lkb/d$b;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lkb/d$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lga/f;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lga/f$e;->a:Lkb/d$b;

    .line 5
    .line 6
    invoke-virtual {p1}, Lkb/d$b;->a()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lga/f$e;->b:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lga/f$e;->b:Ljava/lang/String;

    return-object v0
.end method
