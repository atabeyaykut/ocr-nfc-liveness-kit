.class public final Ld8/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ls4/da;

.field public static final b:Ld8/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ls4/da;

    .line 2
    .line 3
    const-string v1, "\n"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ls4/da;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Ld8/d;->a:Ls4/da;

    .line 10
    .line 11
    sget-object v0, Ld8/c;->a:Ld8/c;

    .line 12
    .line 13
    sput-object v0, Ld8/d;->b:Ld8/c;

    .line 14
    .line 15
    return-void
.end method
