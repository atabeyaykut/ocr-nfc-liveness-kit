.class public final Lrc/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrc/j$a;
    }
.end annotation


# static fields
.field public static final j:Ljava/util/regex/Pattern;

.field public static final k:Ljava/util/regex/Pattern;

.field public static final l:Ljava/util/regex/Pattern;

.field public static final m:Ljava/util/regex/Pattern;

.field public static final n:Lrc/j$a;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:J

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public final i:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lrc/j$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lrc/j$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lrc/j;->n:Lrc/j$a;

    .line 7
    .line 8
    const-string v0, "(\\d{2,4})[^\\d]*"

    .line 9
    .line 10
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lrc/j;->j:Ljava/util/regex/Pattern;

    .line 15
    .line 16
    const-string v0, "(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*"

    .line 17
    .line 18
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lrc/j;->k:Ljava/util/regex/Pattern;

    .line 23
    .line 24
    const-string v0, "(\\d{1,2})[^\\d]*"

    .line 25
    .line 26
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Lrc/j;->l:Ljava/util/regex/Pattern;

    .line 31
    .line 32
    const-string v0, "(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*"

    .line 33
    .line 34
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sput-object v0, Lrc/j;->m:Ljava/util/regex/Pattern;

    .line 39
    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrc/j;->a:Ljava/lang/String;

    iput-object p2, p0, Lrc/j;->b:Ljava/lang/String;

    iput-wide p3, p0, Lrc/j;->c:J

    iput-object p5, p0, Lrc/j;->d:Ljava/lang/String;

    iput-object p6, p0, Lrc/j;->e:Ljava/lang/String;

    iput-boolean p7, p0, Lrc/j;->f:Z

    iput-boolean p8, p0, Lrc/j;->g:Z

    iput-boolean p9, p0, Lrc/j;->h:Z

    iput-boolean p10, p0, Lrc/j;->i:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p1, Lrc/j;

    if-eqz v0, :cond_0

    check-cast p1, Lrc/j;

    iget-object v0, p1, Lrc/j;->a:Ljava/lang/String;

    iget-object v1, p0, Lrc/j;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lrc/j;->b:Ljava/lang/String;

    iget-object v1, p0, Lrc/j;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lrc/j;->c:J

    iget-wide v2, p0, Lrc/j;->c:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p1, Lrc/j;->d:Ljava/lang/String;

    iget-object v1, p0, Lrc/j;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lrc/j;->e:Ljava/lang/String;

    iget-object v1, p0, Lrc/j;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lrc/j;->f:Z

    iget-boolean v1, p0, Lrc/j;->f:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lrc/j;->g:Z

    iget-boolean v1, p0, Lrc/j;->g:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lrc/j;->h:Z

    iget-boolean v1, p0, Lrc/j;->h:Z

    if-ne v0, v1, :cond_0

    iget-boolean p1, p1, Lrc/j;->i:Z

    iget-boolean v0, p0, Lrc/j;->i:Z

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final hashCode()I
    .locals 6
    .annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
    .end annotation

    .line 1
    iget-object v0, p0, Lrc/j;->a:Ljava/lang/String;

    .line 2
    .line 3
    const/16 v1, 0x20f

    .line 4
    .line 5
    const/16 v2, 0x1f

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Landroidx/room/util/a;->a(Ljava/lang/String;II)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lrc/j;->b:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v1, v0, v2}, Landroidx/room/util/a;->a(Ljava/lang/String;II)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/16 v1, 0x20

    .line 18
    .line 19
    iget-wide v2, p0, Lrc/j;->c:J

    .line 20
    .line 21
    ushr-long v4, v2, v1

    .line 22
    .line 23
    xor-long v1, v2, v4

    .line 24
    .line 25
    long-to-int v2, v1

    .line 26
    add-int/2addr v0, v2

    .line 27
    mul-int/lit8 v0, v0, 0x1f

    .line 28
    .line 29
    iget-object v1, p0, Lrc/j;->d:Ljava/lang/String;

    .line 30
    .line 31
    const/16 v2, 0x1f

    .line 32
    .line 33
    invoke-static {v1, v0, v2}, Landroidx/room/util/a;->a(Ljava/lang/String;II)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iget-object v1, p0, Lrc/j;->e:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v1, v0, v2}, Landroidx/room/util/a;->a(Ljava/lang/String;II)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    const/16 v1, 0x4cf

    .line 44
    .line 45
    iget-boolean v2, p0, Lrc/j;->f:Z

    .line 46
    .line 47
    if-eqz v2, :cond_0

    .line 48
    .line 49
    const/16 v2, 0x4cf

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const/16 v2, 0x4d5

    .line 53
    .line 54
    :goto_0
    add-int/2addr v0, v2

    .line 55
    mul-int/lit8 v0, v0, 0x1f

    .line 56
    .line 57
    iget-boolean v2, p0, Lrc/j;->g:Z

    .line 58
    .line 59
    if-eqz v2, :cond_1

    .line 60
    .line 61
    const/16 v2, 0x4cf

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    const/16 v2, 0x4d5

    .line 65
    .line 66
    :goto_1
    add-int/2addr v0, v2

    .line 67
    mul-int/lit8 v0, v0, 0x1f

    .line 68
    .line 69
    iget-boolean v2, p0, Lrc/j;->h:Z

    .line 70
    .line 71
    if-eqz v2, :cond_2

    .line 72
    .line 73
    const/16 v2, 0x4cf

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_2
    const/16 v2, 0x4d5

    .line 77
    .line 78
    :goto_2
    add-int/2addr v0, v2

    .line 79
    mul-int/lit8 v0, v0, 0x1f

    .line 80
    .line 81
    iget-boolean v2, p0, Lrc/j;->i:Z

    .line 82
    .line 83
    if-eqz v2, :cond_3

    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_3
    const/16 v1, 0x4d5

    .line 87
    .line 88
    :goto_3
    add-int/2addr v0, v1

    .line 89
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lrc/j;->a:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const/16 v1, 0x3d

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lrc/j;->b:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-boolean v1, p0, Lrc/j;->h:Z

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    const-wide/high16 v1, -0x8000000000000000L

    .line 26
    .line 27
    iget-wide v3, p0, Lrc/j;->c:J

    .line 28
    .line 29
    cmp-long v5, v3, v1

    .line 30
    .line 31
    if-nez v5, :cond_0

    .line 32
    .line 33
    const-string v1, "; max-age=0"

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const-string v1, "; expires="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    new-instance v1, Ljava/util/Date;

    .line 42
    .line 43
    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 44
    .line 45
    .line 46
    sget-object v2, Lwc/c;->a:Lwc/c$a;

    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Ljava/text/DateFormat;

    .line 53
    .line 54
    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    const-string v2, "STANDARD_DATE_FORMAT.get().format(this)"

    .line 59
    .line 60
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    :cond_1
    iget-boolean v1, p0, Lrc/j;->i:Z

    .line 67
    .line 68
    if-nez v1, :cond_2

    .line 69
    .line 70
    const-string v1, "; domain="

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget-object v1, p0, Lrc/j;->d:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    :cond_2
    const-string v1, "; path="

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget-object v1, p0, Lrc/j;->e:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget-boolean v1, p0, Lrc/j;->f:Z

    .line 91
    .line 92
    if-eqz v1, :cond_3

    .line 93
    .line 94
    const-string v1, "; secure"

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    :cond_3
    iget-boolean v1, p0, Lrc/j;->g:Z

    .line 100
    .line 101
    if-eqz v1, :cond_4

    .line 102
    .line 103
    const-string v1, "; httponly"

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    const-string v1, "toString()"

    .line 113
    .line 114
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    return-object v0
.end method
