.class public abstract Laa/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laa/c$a;
    }
.end annotation


# static fields
.field public static final a:Laa/c$a;

.field public static final b:Laa/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Laa/c$a;

    .line 2
    .line 3
    invoke-direct {v0}, Laa/c$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Laa/c;->a:Laa/c$a;

    .line 7
    .line 8
    sget-object v0, Ls9/b;->a:Ls9/a;

    .line 9
    .line 10
    invoke-virtual {v0}, Ls9/a;->b()Laa/c;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Laa/c;->b:Laa/c;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method
